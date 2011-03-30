{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Te959d9102edb11e091fa0800200c9a66 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Typeable.Internal.EBF
import qualified Typeable.T0c761f8e757e4ea79d242a01136452d2
import qualified Typeable.Tdd9cf67a3e2b488daeb9df9c29566a99
import qualified Typeable.T0ba85f3f10099c75d4b696d0cf944e09
 
data SimpleDialog (a :: *) = SimpleDialog{dialoguemetadata ::
                                          Typeable.T0c761f8e757e4ea79d242a01136452d2.SimpleMeta,
                                          turns ::
                                          Typeable.T0ba85f3f10099c75d4b696d0cf944e09.List
                                            (Typeable.Tdd9cf67a3e2b488daeb9df9c29566a99.Turn a)}
 
deriving instance (Prelude.Eq a) => Prelude.Eq (SimpleDialog a)
 
deriving instance (Prelude.Ord a) => Prelude.Ord (SimpleDialog a)
 
deriving instance (Prelude.Show a) => Prelude.Show (SimpleDialog a)
 
instance (Typeable.Internal.EBF.EBF a) => Typeable.Internal.EBF.EBF
         (SimpleDialog a) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Typeable.Internal.EBF.get
                          (\ a0 ->
                             (>>=) Typeable.Internal.EBF.get
                               (\ a1 -> return (SimpleDialog a0 a1)))
        put (SimpleDialog a b)
          = do Typeable.Internal.EBF.put a
               Typeable.Internal.EBF.put b