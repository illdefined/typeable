{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T34c13bdaac7d413ed735e64edcac7ff5 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Typeable.Internal.EBF
 
data Tuple (a :: *) (b :: *) = Tuple{fst :: a, snd :: b}
 
deriving instance (Prelude.Eq a, Prelude.Eq b) => Prelude.Eq
         (Tuple a b)
 
deriving instance (Prelude.Ord a, Prelude.Ord b) => Prelude.Ord
         (Tuple a b)
 
deriving instance (Prelude.Show a, Prelude.Show b) => Prelude.Show
         (Tuple a b)
 
instance (Typeable.Internal.EBF.EBF a,
          Typeable.Internal.EBF.EBF b) =>
         Typeable.Internal.EBF.EBF (Tuple a b) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Typeable.Internal.EBF.get
                          (\ a0 ->
                             (>>=) Typeable.Internal.EBF.get (\ a1 -> return (Tuple a0 a1)))
        put (Tuple a b)
          = do Typeable.Internal.EBF.put a
               Typeable.Internal.EBF.put b