{-# LANGUAGE OverloadedStrings #-}
module TypeableInternal.Classes where

import Prelude hiding (maybe)

import Typeable.Cc6ebaa9f4cdc4068894d1ffaef5a7a83
import Typeable.T421496848904471ea3197f25e2a02b72
import Typeable.T9e2e1e478e094a8abe5507f8574ac91f

import TypeableInternal.TypesDefault
import TypeableInternal.InternalTypeDefs
import qualified Data.Set as S
import qualified Data.Map as M

-----
-- class-definitions (provisoric for as long as the binary format is not yet finalised)
-----

c1  = defaultClass
      { classIdentifier   = "8658bc79-8a87-4218-9aa7-c70e2f9d0fe2"
      , className         = "Eq"
      , classSemantics    = ""
      , classMethods      = M.fromList [ ("equal",   Method (function (Variable First) (Variable First)) "") 
                                       , ("unequal", Method (function (Variable First) (Variable First)) "")
                                       ]
      }

