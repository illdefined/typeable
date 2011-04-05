{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T1ea5eae4702844f7acbc3c65b2a40093 where
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
 
data UriByScheme (a :: *)
 
instance (Prelude.Eq a) => Prelude.Eq (UriByScheme a)
 
instance (Prelude.Ord a) => Prelude.Ord (UriByScheme a)
 
instance (Prelude.Show a) => Prelude.Show (UriByScheme a)
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (UriByScheme a)
 
instance Data.Typeable.Typeable1 UriByScheme
 
instance Data.EBF.TypeIdentS UriByScheme