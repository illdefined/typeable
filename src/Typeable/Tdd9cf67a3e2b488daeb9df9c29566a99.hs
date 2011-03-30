{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Tdd9cf67a3e2b488daeb9df9c29566a99 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Typeable.Internal.EBF
import qualified Typeable.T26b9a53370bc4489a322192e2e0416ce
import qualified Typeable.T0ba85f3f10099c75d4b696d0cf944e09
 
data Turn (a :: *) = Turn{who ::
                          Typeable.T26b9a53370bc4489a322192e2e0416ce.SimpleSpeaker,
                          utterance :: Typeable.T0ba85f3f10099c75d4b696d0cf944e09.List a}
 
deriving instance (Prelude.Eq a) => Prelude.Eq (Turn a)
 
deriving instance (Prelude.Ord a) => Prelude.Ord (Turn a)
 
deriving instance (Prelude.Show a) => Prelude.Show (Turn a)
 
instance (Typeable.Internal.EBF.EBF a) => Typeable.Internal.EBF.EBF
         (Turn a) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Typeable.Internal.EBF.get
                          (\ a0 ->
                             (>>=) Typeable.Internal.EBF.get (\ a1 -> return (Turn a0 a1)))
        put (Turn a b)
          = do Typeable.Internal.EBF.put a
               Typeable.Internal.EBF.put b