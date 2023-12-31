package main

import (
  "net/http"
  "time"
  "github.com/labstack/echo/v4"
  "github.com/ppdx999/oapi-example/server/oapi"
)

type Server struct{}

func (s *Server) GetTodoList(ctx echo.Context) error {
  ids := []int{1, 2, 3}
  titles := []string{"title1", "title2", "title3"}
  created_at := []time.Time{time.Now(), time.Now(), time.Now()}
  updated_at := []time.Time{time.Now(), time.Now(), time.Now()}


  todos := []*oapi.Todo{}
  for i := 0; i < len(ids); i++ {
    todos = append(todos, &oapi.Todo{
      Id: ids[i],
      Title: titles[i],
      CreatedAt: created_at[i],
      UpdatedAt: updated_at[i],
    })
  }


  return ctx.JSON(http.StatusOK, todos)
}

func (s *Server) CreateTodo(ctx echo.Context) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) GetTodo(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) UpdateTodo(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) DeleteTodo(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) GetUserList(ctx echo.Context) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) CreateUser(ctx echo.Context) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) GetUser(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) UpdateUser(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func (s *Server) DeleteUser(ctx echo.Context, id int) error {
  return ctx.JSON(http.StatusNotImplemented, "not implemented")
}

func main() {
  e := echo.New()

  server := &Server{}

  oapi.RegisterHandlers(e, server)

  e.Logger.Fatal(e.Start(":9995"))
}
