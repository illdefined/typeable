{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
{-# OPTIONS -XOverloadedStrings #-}
{-# OPTIONS -XDeriveDataTypeable #-}
module Typeable.T5cae969a657448ebbc2eaf7f31d7340f where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Tree
import qualified Data.Data
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
import Data.String
 
data Triple (a :: *) (b :: *) (c :: *) = Triple{fst :: a, snd :: b,
                                                thrd :: c}
 
deriving instance (Prelude.Eq a, Prelude.Eq b, Prelude.Eq c) =>
         Prelude.Eq (Triple a b c)
 
deriving instance (Prelude.Ord a, Prelude.Ord b, Prelude.Ord c) =>
         Prelude.Ord (Triple a b c)
 
deriving instance
         (Prelude.Show a, Prelude.Show b, Prelude.Show c) => Prelude.Show
         (Triple a b c)
 
instance (Data.EBF.EBF a, Data.EBF.EBF b, Data.EBF.EBF c,
          Data.EBF.TypeIdent a, Data.EBF.TypeIdent b,
          Data.EBF.TypeIdent c) =>
         Data.EBF.EBF (Triple a b c) where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Data.EBF.get
                          (\ a0 ->
                             (>>=) Data.EBF.get
                               (\ a1 -> (>>=) Data.EBF.get (\ a2 -> return (Triple a0 a1 a2))))
        put (Triple a b c)
          = do Data.EBF.put a
               Data.EBF.put b
               Data.EBF.put c
 
instance Data.Typeable.Typeable3 Triple where
        typeOf3 _
          = Data.Typeable.mkTyConApp
              (Data.Typeable.mkTyCon
                 "Typeable.T5cae969a657448ebbc2eaf7f31d7340f.Triple")
              []
 
instance Data.EBF.TypeIdentSSS Triple where
        typeOfSSS _
          = Data.Tree.Node "5cae969a-6574-48eb-bc2e-af7f31d7340f" []