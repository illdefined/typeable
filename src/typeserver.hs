{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS -XTypeSynonymInstances -XFlexibleInstances #-}
module Main where

import Typeable.T421496848904471ea3197f25e2a02b72

import Happstack.Server
import Text.Blaze
import Text.Blaze.Renderer.Utf8
import Control.Monad
import Data.Monoid
import qualified Data.Set as S
import qualified Data.Map as M
import Data.String
import TypeableInternal.NamespaceParser
import Text.ParserCombinators.Parsec hiding (string)

import TypeableInternal.InternalTypeDefs
import TypeableInternal.Types
import TypeableInternal.Classes
import TypeableInternal.TypesDefault
import TypeableInternal.Context
import TypeableInternal.FormatHtml
import TypeableInternal.FormatHaskell
import System.IO.Unsafe
import System (getArgs)
import System.FilePath.Posix

import Language.Haskell.Exts.Syntax (Module)
import Language.Haskell.Exts.Pretty

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A

main :: IO ()
main  = do args <- getArgs
           let p = if null args then 8000 else read (args !! 0)
           simpleHTTP (nullConf {port = p}) (msum handlers) 


namespace :: Namespace
namespace  = unsafePerformIO $ do n <- parseFromFile namespaceParser "static/default.namespace"
                                  case n of
                                    Left e -> error $ show e
                                    Right e -> return e

handlers :: [ServerPart Response]
handlers  = [
              dirs "static/style.css" $ fileServe [] "static/style.css"  
            , dir  "type"   $ nullDir >> listTypes
            , dir  "type"   $ path serveType
            , dir  "class"  $ nullDir >> listClasses
            , dir  "class"  $ path serveClass
            , serveOverview
            ]

serveOverview :: ServerPartT IO Response
serveOverview = runC (htmlize namespace) >>= ok . toResponse 

listTypes    = ok $ toResponse $ unlines $ map show $ M.keys (typeMap static)
listClasses  = ok $ toResponse $ unlines $ map show $ M.keys (classMap static)

serveType :: UUID -> ServerPartT IO Response
serveType uuid = case M.lookup uuid (typeMap static) of
                   Just t  -> do msum [ withDataFn (look "format") $ \x -> case x of
                                                                            "haskell" -> msum [ serveFileUsing
                                                                                                  filePathSendFile
                                                                                                  (asContentType "text/plain")
                                                                                                  ("static"</>"exports"</>"haskell"</>"T"++(show uuid)<.>"hs") 
                                                                                              , runC (typeModule t) >>= ok . toResponse 
                                                                                              ]
                                                                            _         -> mempty
                                      , runC (htmlize t) >>= ok . toResponse 
                                      ]
                   Nothing -> notFound $ toResponse ((show uuid)++" does not exist.") 

serveClass = serveType

-----------------

static = Static (g types) (g classes)
         where
           g z = M.fromList (map (\x->(identifier x, x)) z)

runC x = runContext x static
        
instance FromReqURI UUID where
  fromReqURI s = do a <- fromReqURI s :: Maybe String
                    return $ fromString a

instance ToMessage Html where
  toContentType _ = "text/html"
  toMessage       = renderHtml . encapsulate

instance ToMessage Module where
  toContentType _ = "text/plain"
  toMessage       = toMessage . prettyPrint

