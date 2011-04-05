{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T606f253533d3420da3465afae341d598 where
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
import qualified Typeable.Tc211e54d6eef4234a7b675d5f696efe5
 
data Time (a :: *) = Time{seconds ::
                          Typeable.Tc211e54d6eef4234a7b675d5f696efe5.Rational}
 
deriving instance (Prelude.Eq a) => Prelude.Eq (Time a)
 
deriving instance (Prelude.Ord a) => Prelude.Ord (Time a)
 
deriving instance (Prelude.Show a) => Prelude.Show (Time a)
 
instance (Data.EBF.EBF a) => Data.EBF.EBF (Time a) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Data.EBF.get (\ a0 -> return (Time a0))
        put (Time a) = do Data.EBF.put a
 
instance Data.Typeable.Typeable1 Time where
        typeOf1 _
          = Data.Typeable.mkTyConApp
              (Data.Typeable.mkTyCon
                 "Typeable.T606f253533d3420da3465afae341d598.Time")
              []
 
instance Data.EBF.TypeIdentS Time where
        typeOfS _
          = Data.Tree.Node
              (UUID.UUID 128182987210936368809935960111371638168)
              []