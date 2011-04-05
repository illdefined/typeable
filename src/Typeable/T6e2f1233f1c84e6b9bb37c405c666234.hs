{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.T6e2f1233f1c84e6b9bb37c405c666234 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
import qualified Typeable.T6716d098a58743379e54c12f249cdc0c
import qualified Typeable.Tf2c4f6ddd939444ba209fbdf2152eb54
import qualified Typeable.T0ba85f3f10099c75d4b696d0cf944e09
 
data SchemeName = SchemeName{initial ::
                             Typeable.T6716d098a58743379e54c12f249cdc0c.LatinAlphabet,
                             rest ::
                             Typeable.T0ba85f3f10099c75d4b696d0cf944e09.List
                               Typeable.Tf2c4f6ddd939444ba209fbdf2152eb54.SchemeSymbol}
 
deriving instance Prelude.Eq SchemeName
 
deriving instance Prelude.Ord SchemeName
 
deriving instance Prelude.Show SchemeName
 
instance Data.EBF.EBF SchemeName where
        get
          = do index <- return 0
               case index of
                   0 -> (>>=) Data.EBF.get
                          (\ a0 -> (>>=) Data.EBF.get (\ a1 -> return (SchemeName a0 a1)))
        put (SchemeName a b)
          = do Data.EBF.put a
               Data.EBF.put b
 
instance Data.Typeable.Typeable SchemeName where
        typeOf _
          = Data.Typeable.mkTyConApp
              (Data.Typeable.mkTyCon
                 "Typeable.T6e2f1233f1c84e6b9bb37c405c666234")
              []