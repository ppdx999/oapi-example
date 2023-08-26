{-
   Todo

   Todo

   OpenAPI Version: 3.0.3
   Todo API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Todo.API.User
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Todo.API.User where

import Todo.Core
import Todo.MimeTypes
import Todo.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** User

-- *** createUser

-- | @POST \/users@
-- 
-- Create User
-- 
createUser
  :: (Consumes CreateUser MimeJSON)
  => TodoRequest CreateUser MimeJSON User MimeJSON
createUser =
  _mkRequest "POST" ["/users"]

data CreateUser 
instance HasBodyParam CreateUser CreateUserRequest 

-- | @application/json@
instance Consumes CreateUser MimeJSON

-- | @application/json@
instance Produces CreateUser MimeJSON


-- *** deleteUser

-- | @DELETE \/users\/{user_id}@
-- 
-- Delete User
-- 
deleteUser
  :: UserId -- ^ "userId"
  -> TodoRequest DeleteUser MimeNoContent NoContent MimeNoContent
deleteUser (UserId userId) =
  _mkRequest "DELETE" ["/users/",toPath userId]

data DeleteUser  
instance Produces DeleteUser MimeNoContent


-- *** getUser

-- | @GET \/users\/{user_id}@
-- 
-- Get User
-- 
getUser
  :: UserId -- ^ "userId"
  -> TodoRequest GetUser MimeNoContent User MimeJSON
getUser (UserId userId) =
  _mkRequest "GET" ["/users/",toPath userId]

data GetUser  
-- | @application/json@
instance Produces GetUser MimeJSON


-- *** getUserList

-- | @GET \/users@
-- 
-- Get User List
-- 
getUserList
  :: TodoRequest GetUserList MimeNoContent [User] MimeJSON
getUserList =
  _mkRequest "GET" ["/users"]

data GetUserList  
-- | @application/json@
instance Produces GetUserList MimeJSON


-- *** updateUser

-- | @PUT \/users\/{user_id}@
-- 
-- Update User
-- 
updateUser
  :: (Consumes UpdateUser MimeJSON)
  => UserId -- ^ "userId"
  -> TodoRequest UpdateUser MimeJSON [User] MimeJSON
updateUser (UserId userId) =
  _mkRequest "PUT" ["/users/",toPath userId]

data UpdateUser 
instance HasBodyParam UpdateUser CreateUserRequest 

-- | @application/json@
instance Consumes UpdateUser MimeJSON

-- | @application/json@
instance Produces UpdateUser MimeJSON
