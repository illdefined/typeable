{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
{-# OPTIONS -XOverloadedStrings #-}
{-# OPTIONS -XDeriveDataTypeable #-}
module Typeable.Tf18ae792e5324a68a16f11ea5c61442a where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Tree
import qualified Data.Data
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
import Data.String
 
data Tel
 
instance Prelude.Eq Tel where
        (==) = undefined
 
instance Prelude.Ord Tel where
        compare = undefined
 
instance Prelude.Show Tel where
        show = undefined
 
instance Data.EBF.EBF Tel where
        get = undefined
        put = undefined
 
instance Data.Typeable.Typeable Tel where
        typeOf _
          = Data.Typeable.mkTyConApp
              (Data.Typeable.mkTyCon
                 "Typeable.Tf18ae792e5324a68a16f11ea5c61442a.Tel")
              []
 
instance Data.EBF.TypeIdent Tel where
        typeOf _ = Data.Tree.Node "f18ae792-e532-4a68-a16f-11ea5c61442a" []
 
instance Prelude.Enum Tel where
        succ = undefined
        pred = undefined
        toEnum = undefined
        fromEnum = undefined