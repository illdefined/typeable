{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Te393b15b944c4b3597cd02b1be6d693b where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Tree
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
import qualified Typeable.T346674042a7248b4a94abff0726d0c43 as UUID
 
data URI
 
instance Prelude.Eq URI
 
instance Prelude.Ord URI
 
instance Prelude.Show URI
 
instance Data.EBF.EBF URI
 
instance Data.Typeable.Typeable URI
 
instance Data.EBF.TypeIdent URI