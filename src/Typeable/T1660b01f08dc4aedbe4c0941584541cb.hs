{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T1660b01f08dc4aedbe4c0941584541cb where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Typeable.Internal.EBF
 
data Kind = Type{}
          | Application{function ::
                        Typeable.T1660b01f08dc4aedbe4c0941584541cb.Kind,
                        argument :: Typeable.T1660b01f08dc4aedbe4c0941584541cb.Kind}
 
deriving instance Prelude.Eq Kind
 
deriving instance Prelude.Ord Kind
 
deriving instance Prelude.Show Kind
 
instance Typeable.Internal.EBF.EBF Kind where
        get
          = do index <- Data.Binary.Get.getWord8
               case index of
                   0 -> return Type
                   1 -> (>>=) Typeable.Internal.EBF.get
                          (\ a0 ->
                             (>>=) Typeable.Internal.EBF.get
                               (\ a1 -> return (Application a0 a1)))
        put Type = do Data.Binary.Put.putWord8 0
        put (Application a b)
          = do Data.Binary.Put.putWord8 1
               Typeable.Internal.EBF.put a
               Typeable.Internal.EBF.put b