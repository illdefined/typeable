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
import qualified Data.Tree
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
import qualified Typeable.T346674042a7248b4a94abff0726d0c43 as UUID
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
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (SimpleDialog a) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Data.EBF.get
                          (\ a0 -> (>>=) Data.EBF.get (\ a1 -> return (SimpleDialog a0 a1)))
        put (SimpleDialog a b)
          = do Data.EBF.put a
               Data.EBF.put b
 
instance Data.Typeable.Typeable1 SimpleDialog where
        typeOf1 _
          = Data.Typeable.mkTyConApp
              (Data.Typeable.mkTyCon
                 "Typeable.Te959d9102edb11e091fa0800200c9a66.SimpleDialog")
              []
 
instance Data.EBF.TypeIdentS SimpleDialog where
        typeOfS _
          = Data.Tree.Node
              (UUID.UUID 310176640003330740315334744190669855334)
              []