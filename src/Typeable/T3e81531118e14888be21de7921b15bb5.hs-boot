{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T3e81531118e14888be21de7921b15bb5 where
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
 
data Type (a :: *)
 
instance (Prelude.Eq a) => Prelude.Eq (Type a)
 
instance (Prelude.Ord a) => Prelude.Ord (Type a)
 
instance (Prelude.Show a) => Prelude.Show (Type a)
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (Type a)
 
instance Data.Typeable.Typeable1 Type
 
instance Data.EBF.TypeIdentS Type