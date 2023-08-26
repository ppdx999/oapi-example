{-
   Todo

   Todo

   OpenAPI Version: 3.0.3
   Todo API version: 1.0.0
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Todo.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Todo.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import Todo.Model
import Todo.Core


-- * CreateTodoRequest

-- | 'createTodoRequestTitle' Lens
createTodoRequestTitleL :: Lens_' CreateTodoRequest (Text)
createTodoRequestTitleL f CreateTodoRequest{..} = (\createTodoRequestTitle -> CreateTodoRequest { createTodoRequestTitle, ..} ) <$> f createTodoRequestTitle
{-# INLINE createTodoRequestTitleL #-}

-- | 'createTodoRequestDescription' Lens
createTodoRequestDescriptionL :: Lens_' CreateTodoRequest (Maybe Text)
createTodoRequestDescriptionL f CreateTodoRequest{..} = (\createTodoRequestDescription -> CreateTodoRequest { createTodoRequestDescription, ..} ) <$> f createTodoRequestDescription
{-# INLINE createTodoRequestDescriptionL #-}

-- | 'createTodoRequestDueDate' Lens
createTodoRequestDueDateL :: Lens_' CreateTodoRequest (Maybe Date)
createTodoRequestDueDateL f CreateTodoRequest{..} = (\createTodoRequestDueDate -> CreateTodoRequest { createTodoRequestDueDate, ..} ) <$> f createTodoRequestDueDate
{-# INLINE createTodoRequestDueDateL #-}



-- * CreateUserRequest

-- | 'createUserRequestName' Lens
createUserRequestNameL :: Lens_' CreateUserRequest (Text)
createUserRequestNameL f CreateUserRequest{..} = (\createUserRequestName -> CreateUserRequest { createUserRequestName, ..} ) <$> f createUserRequestName
{-# INLINE createUserRequestNameL #-}



-- * Todo

-- | 'todoId' Lens
todoIdL :: Lens_' Todo (Int)
todoIdL f Todo{..} = (\todoId -> Todo { todoId, ..} ) <$> f todoId
{-# INLINE todoIdL #-}

-- | 'todoTitle' Lens
todoTitleL :: Lens_' Todo (Text)
todoTitleL f Todo{..} = (\todoTitle -> Todo { todoTitle, ..} ) <$> f todoTitle
{-# INLINE todoTitleL #-}

-- | 'todoDescription' Lens
todoDescriptionL :: Lens_' Todo (Maybe Text)
todoDescriptionL f Todo{..} = (\todoDescription -> Todo { todoDescription, ..} ) <$> f todoDescription
{-# INLINE todoDescriptionL #-}

-- | 'todoDueDate' Lens
todoDueDateL :: Lens_' Todo (Maybe Date)
todoDueDateL f Todo{..} = (\todoDueDate -> Todo { todoDueDate, ..} ) <$> f todoDueDate
{-# INLINE todoDueDateL #-}

-- | 'todoCreatedBy' Lens
todoCreatedByL :: Lens_' Todo (Maybe Int)
todoCreatedByL f Todo{..} = (\todoCreatedBy -> Todo { todoCreatedBy, ..} ) <$> f todoCreatedBy
{-# INLINE todoCreatedByL #-}

-- | 'todoCreatedAt' Lens
todoCreatedAtL :: Lens_' Todo (DateTime)
todoCreatedAtL f Todo{..} = (\todoCreatedAt -> Todo { todoCreatedAt, ..} ) <$> f todoCreatedAt
{-# INLINE todoCreatedAtL #-}

-- | 'todoUpdatedAt' Lens
todoUpdatedAtL :: Lens_' Todo (DateTime)
todoUpdatedAtL f Todo{..} = (\todoUpdatedAt -> Todo { todoUpdatedAt, ..} ) <$> f todoUpdatedAt
{-# INLINE todoUpdatedAtL #-}



-- * User

-- | 'userId' Lens
userIdL :: Lens_' User (Int)
userIdL f User{..} = (\userId -> User { userId, ..} ) <$> f userId
{-# INLINE userIdL #-}

-- | 'userName' Lens
userNameL :: Lens_' User (Text)
userNameL f User{..} = (\userName -> User { userName, ..} ) <$> f userName
{-# INLINE userNameL #-}

-- | 'userRole' Lens
userRoleL :: Lens_' User (Maybe E'Role)
userRoleL f User{..} = (\userRole -> User { userRole, ..} ) <$> f userRole
{-# INLINE userRoleL #-}

-- | 'userTodos' Lens
userTodosL :: Lens_' User (Todo)
userTodosL f User{..} = (\userTodos -> User { userTodos, ..} ) <$> f userTodos
{-# INLINE userTodosL #-}

-- | 'userCreatedAt' Lens
userCreatedAtL :: Lens_' User (DateTime)
userCreatedAtL f User{..} = (\userCreatedAt -> User { userCreatedAt, ..} ) <$> f userCreatedAt
{-# INLINE userCreatedAtL #-}

-- | 'userUpdatedAt' Lens
userUpdatedAtL :: Lens_' User (DateTime)
userUpdatedAtL f User{..} = (\userUpdatedAt -> User { userUpdatedAt, ..} ) <$> f userUpdatedAt
{-# INLINE userUpdatedAtL #-}


