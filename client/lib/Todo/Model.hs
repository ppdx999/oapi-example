{-
   Todo

   Todo

   OpenAPI Version: 3.0.3
   Todo API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Todo.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Todo.Model where

import Todo.Core
import Todo.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** TodoId
newtype TodoId = TodoId { unTodoId :: Int } deriving (P.Eq, P.Show)

-- ** UserId
newtype UserId = UserId { unUserId :: Int } deriving (P.Eq, P.Show)

-- * Models


-- ** CreateTodoRequest
-- | CreateTodoRequest
data CreateTodoRequest = CreateTodoRequest
  { createTodoRequestTitle :: !(Text) -- ^ /Required/ "title"
  , createTodoRequestDescription :: !(Maybe Text) -- ^ "description"
  , createTodoRequestDueDate :: !(Maybe Date) -- ^ "due_date"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON CreateTodoRequest
instance A.FromJSON CreateTodoRequest where
  parseJSON = A.withObject "CreateTodoRequest" $ \o ->
    CreateTodoRequest
      <$> (o .:  "title")
      <*> (o .:? "description")
      <*> (o .:? "due_date")

-- | ToJSON CreateTodoRequest
instance A.ToJSON CreateTodoRequest where
  toJSON CreateTodoRequest {..} =
   _omitNulls
      [ "title" .= createTodoRequestTitle
      , "description" .= createTodoRequestDescription
      , "due_date" .= createTodoRequestDueDate
      ]


-- | Construct a value of type 'CreateTodoRequest' (by applying it's required fields, if any)
mkCreateTodoRequest
  :: Text -- ^ 'createTodoRequestTitle' 
  -> CreateTodoRequest
mkCreateTodoRequest createTodoRequestTitle =
  CreateTodoRequest
  { createTodoRequestTitle
  , createTodoRequestDescription = Nothing
  , createTodoRequestDueDate = Nothing
  }

-- ** CreateUserRequest
-- | CreateUserRequest
data CreateUserRequest = CreateUserRequest
  { createUserRequestName :: !(Text) -- ^ /Required/ "name"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON CreateUserRequest
instance A.FromJSON CreateUserRequest where
  parseJSON = A.withObject "CreateUserRequest" $ \o ->
    CreateUserRequest
      <$> (o .:  "name")

-- | ToJSON CreateUserRequest
instance A.ToJSON CreateUserRequest where
  toJSON CreateUserRequest {..} =
   _omitNulls
      [ "name" .= createUserRequestName
      ]


-- | Construct a value of type 'CreateUserRequest' (by applying it's required fields, if any)
mkCreateUserRequest
  :: Text -- ^ 'createUserRequestName' 
  -> CreateUserRequest
mkCreateUserRequest createUserRequestName =
  CreateUserRequest
  { createUserRequestName
  }

-- ** Todo
-- | Todo
data Todo = Todo
  { todoId :: !(Int) -- ^ /Required/ "id"
  , todoTitle :: !(Text) -- ^ /Required/ "title"
  , todoDescription :: !(Maybe Text) -- ^ "description"
  , todoDueDate :: !(Maybe Date) -- ^ "due_date"
  , todoCreatedBy :: !(Maybe Int) -- ^ "created_by"
  , todoCreatedAt :: !(DateTime) -- ^ /Required/ "created_at"
  , todoUpdatedAt :: !(DateTime) -- ^ /Required/ "updated_at"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Todo
instance A.FromJSON Todo where
  parseJSON = A.withObject "Todo" $ \o ->
    Todo
      <$> (o .:  "id")
      <*> (o .:  "title")
      <*> (o .:? "description")
      <*> (o .:? "due_date")
      <*> (o .:? "created_by")
      <*> (o .:  "created_at")
      <*> (o .:  "updated_at")

-- | ToJSON Todo
instance A.ToJSON Todo where
  toJSON Todo {..} =
   _omitNulls
      [ "id" .= todoId
      , "title" .= todoTitle
      , "description" .= todoDescription
      , "due_date" .= todoDueDate
      , "created_by" .= todoCreatedBy
      , "created_at" .= todoCreatedAt
      , "updated_at" .= todoUpdatedAt
      ]


-- | Construct a value of type 'Todo' (by applying it's required fields, if any)
mkTodo
  :: Int -- ^ 'todoId' 
  -> Text -- ^ 'todoTitle' 
  -> DateTime -- ^ 'todoCreatedAt' 
  -> DateTime -- ^ 'todoUpdatedAt' 
  -> Todo
mkTodo todoId todoTitle todoCreatedAt todoUpdatedAt =
  Todo
  { todoId
  , todoTitle
  , todoDescription = Nothing
  , todoDueDate = Nothing
  , todoCreatedBy = Nothing
  , todoCreatedAt
  , todoUpdatedAt
  }

-- ** User
-- | User
data User = User
  { userId :: !(Int) -- ^ /Required/ "id"
  , userName :: !(Text) -- ^ /Required/ "name"
  , userRole :: !(Maybe E'Role) -- ^ "role"
  , userTodos :: !(Todo) -- ^ /Required/ "todos"
  , userCreatedAt :: !(DateTime) -- ^ /Required/ "created_at"
  , userUpdatedAt :: !(DateTime) -- ^ /Required/ "updated_at"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON User
instance A.FromJSON User where
  parseJSON = A.withObject "User" $ \o ->
    User
      <$> (o .:  "id")
      <*> (o .:  "name")
      <*> (o .:? "role")
      <*> (o .:  "todos")
      <*> (o .:  "created_at")
      <*> (o .:  "updated_at")

-- | ToJSON User
instance A.ToJSON User where
  toJSON User {..} =
   _omitNulls
      [ "id" .= userId
      , "name" .= userName
      , "role" .= userRole
      , "todos" .= userTodos
      , "created_at" .= userCreatedAt
      , "updated_at" .= userUpdatedAt
      ]


-- | Construct a value of type 'User' (by applying it's required fields, if any)
mkUser
  :: Int -- ^ 'userId' 
  -> Text -- ^ 'userName' 
  -> Todo -- ^ 'userTodos' 
  -> DateTime -- ^ 'userCreatedAt' 
  -> DateTime -- ^ 'userUpdatedAt' 
  -> User
mkUser userId userName userTodos userCreatedAt userUpdatedAt =
  User
  { userId
  , userName
  , userRole = Nothing
  , userTodos
  , userCreatedAt
  , userUpdatedAt
  }


-- * Enums


-- ** E'Role

-- | Enum of 'Text'
data E'Role
  = E'Role'Viewer -- ^ @"viewer"@
  | E'Role'Editor -- ^ @"editor"@
  deriving (P.Show, P.Eq, P.Typeable, P.Ord, P.Bounded, P.Enum)

instance A.ToJSON E'Role where toJSON = A.toJSON . fromE'Role
instance A.FromJSON E'Role where parseJSON o = P.either P.fail (pure . P.id) . toE'Role =<< A.parseJSON o
instance WH.ToHttpApiData E'Role where toQueryParam = WH.toQueryParam . fromE'Role
instance WH.FromHttpApiData E'Role where parseQueryParam o = WH.parseQueryParam o >>= P.left T.pack . toE'Role
instance MimeRender MimeMultipartFormData E'Role where mimeRender _ = mimeRenderDefaultMultipartFormData

-- | unwrap 'E'Role' enum
fromE'Role :: E'Role -> Text
fromE'Role = \case
  E'Role'Viewer -> "viewer"
  E'Role'Editor -> "editor"

-- | parse 'E'Role' enum
toE'Role :: Text -> P.Either String E'Role
toE'Role = \case
  "viewer" -> P.Right E'Role'Viewer
  "editor" -> P.Right E'Role'Editor
  s -> P.Left $ "toE'Role: enum parse failure: " P.++ P.show s



