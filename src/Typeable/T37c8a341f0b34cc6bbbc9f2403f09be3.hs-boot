{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T37c8a341f0b34cc6bbbc9f2403f09be3 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Typeable.Internal.EBF
 
data Constructor (a :: *)
 
instance (Prelude.Eq a) => Prelude.Eq (Constructor a)
 
instance (Prelude.Ord a) => Prelude.Ord (Constructor a)
 
instance (Prelude.Show a) => Prelude.Show (Constructor a)
 
instance (Typeable.Internal.EBF.EBF a) => Typeable.Internal.EBF.EBF
         (Constructor a)