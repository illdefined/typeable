{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Te590e9ce9cea4dfe86a413e9270dd1c2 where
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
 
data Method (a :: *)
 
instance (Prelude.Eq a) => Prelude.Eq (Method a)
 
instance (Prelude.Ord a) => Prelude.Ord (Method a)
 
instance (Prelude.Show a) => Prelude.Show (Method a)
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (Method a)
 
instance Data.Typeable.Typeable1 Method
 
instance Data.EBF.TypeIdentS Method