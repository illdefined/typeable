{-# OPTIONS -XEmptyDataDecls #-}
{-# OPTIONS -XKindSignatures #-}
{-# OPTIONS -XNoImplicitPrelude #-}
{-# OPTIONS -XFlexibleContexts #-}
{-# OPTIONS -XUndecidableInstances #-}
{-# OPTIONS -XStandaloneDeriving #-}
module Typeable.Tff421b2c31774c37a7336c8245a74da9 where
import Prelude
       (fromInteger, return, fail, undefined, (>>=), (>>), (==))
import qualified Prelude
import qualified Data.Typeable
import qualified Data.Typeable.Extra
import qualified Data.Binary
import qualified Data.Binary.Put
import qualified Data.Binary.Get
import qualified Data.EBF
 
data DecimalAlphabet
 
instance Prelude.Eq DecimalAlphabet
 
instance Prelude.Ord DecimalAlphabet
 
instance Prelude.Show DecimalAlphabet
 
instance Data.EBF.EBF DecimalAlphabet
 
instance Data.Typeable.Typeable DecimalAlphabet
 
instance Prelude.Enum DecimalAlphabet