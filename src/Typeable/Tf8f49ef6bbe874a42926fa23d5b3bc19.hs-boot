{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Tf8f49ef6bbe874a42926fa23d5b3bc19 where
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
 
data Maybe (a :: *)
 
instance (Prelude.Eq a) => Prelude.Eq (Maybe a)
 
instance (Prelude.Ord a) => Prelude.Ord (Maybe a)
 
instance (Prelude.Show a) => Prelude.Show (Maybe a)
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (Maybe a)
 
instance Data.Typeable.Typeable1 Maybe
 
instance Data.EBF.TypeIdentS Maybe