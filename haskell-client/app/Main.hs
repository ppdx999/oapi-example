module Main where

import qualified Network.HTTP.Client as NH
import Todo.API.Todo

main :: IO ()
main = do
  manager <- NH.newManager NH.defaultManagerSettings
  baseUrl <- NH.parseUrl "http://localhost:9995"
  let config = NH.ClientEnv manager baseUrl
  let todoListRequest = getTodoList (ContentType MimeJSON)
  todoList <- runClientM todoListRequest config
  case todoList of
    Left err -> putStrLn $ "Error: " ++ show err
    Right todoList -> putStrLn $ "Todo List: " ++ show todoList
