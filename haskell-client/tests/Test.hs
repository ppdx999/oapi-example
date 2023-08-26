{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import Todo.Model
import Todo.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy CreateTodoRequest)
      propMimeEq MimeJSON (Proxy :: Proxy CreateUserRequest)
      propMimeEq MimeJSON (Proxy :: Proxy Todo)
      propMimeEq MimeJSON (Proxy :: Proxy User)
      
