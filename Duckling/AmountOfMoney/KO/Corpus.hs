-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.AmountOfMoney.KO.Corpus
  ( corpus ) where

import Prelude
import Data.String

import Duckling.AmountOfMoney.Types
import Duckling.Lang
import Duckling.Resolve
import Duckling.Testing.Types

corpus :: Corpus
corpus = (testContext {lang = KO}, allExamples)

allExamples :: [Example]
allExamples = concat
  [ examples (AmountOfMoneyValue Dollar 10)
             [ "십달러"
             , "십불"
             ]
  , examples (AmountOfMoneyValue Cent 10)
             [ "십센트"
             ]
  , examples (AmountOfMoneyValue Dollar 10000)
             [ "만달러"
             , "만불"
             ]
  , examples (AmountOfMoneyValue Dollar 1.23)
             [ "일점이삼달러"
             , "일쩜이삼달러"
             , "일점이삼불"
             , "일쩜이삼불"
             ]
  , examples (AmountOfMoneyValue Dollar 2.23)
             [ "이달러이십삼센트"
             , "이불이십삼센트"
             ]
  , examples (AmountOfMoneyValue EUR 20)
             [ "이십유로"
             , "EUR 20"
             ]
  , examples (AmountOfMoneyValue EUR 29.99)
             [ "이십구점구구유로"
             , "EUR29.99"
             ]
  , examples (AmountOfMoneyValue Pound 9)
             [ "구파운드"
             ]
  , examples (AmountOfMoneyValue KRW 27350000)
             [ "이천칠백삼십오만원"
             , "27,350,000원"
             , "27350000원"
             ]
  , examples (AmountOfMoneyValue KRW 27000)
             [ "이만칠천원"
             , "27,000원"
             , "27000원"
             ]
  , examples (AmountOfMoneyValue KRW 100)
             [ "백원"
             , "100원"
             ]
  , examples (AmountOfMoneyValue KRW 10)
             [ "십원"
             , "10원"
             , "10₩"
             ]
  ]
