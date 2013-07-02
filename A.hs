{-# LANGUAGE RankNTypes #-}

module A (
  A (..)
) where

import Data.Word.Word24 (Word24)

data A = A Word24
