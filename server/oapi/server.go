// Package oapi provides primitives to interact with the openapi HTTP API.
//
// Code generated by github.com/deepmap/oapi-codegen version v1.13.4 DO NOT EDIT.
package oapi

import (
	"fmt"
	"net/http"

	"github.com/deepmap/oapi-codegen/pkg/runtime"
	"github.com/labstack/echo/v4"
)

// ServerInterface represents all server handlers.
type ServerInterface interface {
	// Get Todo List
	// (GET /todos)
	GetTodoList(ctx echo.Context) error
	// Craete Todo
	// (POST /todos)
	CreateTodo(ctx echo.Context) error
	// Delete Todo
	// (DELETE /todos/{todo_id})
	DeleteTodo(ctx echo.Context, todoId TodoId) error
	// Get Todo
	// (GET /todos/{todo_id})
	GetTodo(ctx echo.Context, todoId TodoId) error
	// Update Todo
	// (PUT /todos/{todo_id})
	UpdateTodo(ctx echo.Context, todoId TodoId) error
	// Get User List
	// (GET /users)
	GetUserList(ctx echo.Context) error
	// Create User
	// (POST /users)
	CreateUser(ctx echo.Context) error
	// Delete User
	// (DELETE /users/{user_id})
	DeleteUser(ctx echo.Context, userId UserId) error
	// Get User
	// (GET /users/{user_id})
	GetUser(ctx echo.Context, userId UserId) error
	// Update User
	// (PUT /users/{user_id})
	UpdateUser(ctx echo.Context, userId UserId) error
}

// ServerInterfaceWrapper converts echo contexts to parameters.
type ServerInterfaceWrapper struct {
	Handler ServerInterface
}

// GetTodoList converts echo context to params.
func (w *ServerInterfaceWrapper) GetTodoList(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetTodoList(ctx)
	return err
}

// CreateTodo converts echo context to params.
func (w *ServerInterfaceWrapper) CreateTodo(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.CreateTodo(ctx)
	return err
}

// DeleteTodo converts echo context to params.
func (w *ServerInterfaceWrapper) DeleteTodo(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "todo_id" -------------
	var todoId TodoId

	err = runtime.BindStyledParameterWithLocation("simple", false, "todo_id", runtime.ParamLocationPath, ctx.Param("todo_id"), &todoId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter todo_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.DeleteTodo(ctx, todoId)
	return err
}

// GetTodo converts echo context to params.
func (w *ServerInterfaceWrapper) GetTodo(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "todo_id" -------------
	var todoId TodoId

	err = runtime.BindStyledParameterWithLocation("simple", false, "todo_id", runtime.ParamLocationPath, ctx.Param("todo_id"), &todoId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter todo_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetTodo(ctx, todoId)
	return err
}

// UpdateTodo converts echo context to params.
func (w *ServerInterfaceWrapper) UpdateTodo(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "todo_id" -------------
	var todoId TodoId

	err = runtime.BindStyledParameterWithLocation("simple", false, "todo_id", runtime.ParamLocationPath, ctx.Param("todo_id"), &todoId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter todo_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.UpdateTodo(ctx, todoId)
	return err
}

// GetUserList converts echo context to params.
func (w *ServerInterfaceWrapper) GetUserList(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetUserList(ctx)
	return err
}

// CreateUser converts echo context to params.
func (w *ServerInterfaceWrapper) CreateUser(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.CreateUser(ctx)
	return err
}

// DeleteUser converts echo context to params.
func (w *ServerInterfaceWrapper) DeleteUser(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "user_id" -------------
	var userId UserId

	err = runtime.BindStyledParameterWithLocation("simple", false, "user_id", runtime.ParamLocationPath, ctx.Param("user_id"), &userId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter user_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.DeleteUser(ctx, userId)
	return err
}

// GetUser converts echo context to params.
func (w *ServerInterfaceWrapper) GetUser(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "user_id" -------------
	var userId UserId

	err = runtime.BindStyledParameterWithLocation("simple", false, "user_id", runtime.ParamLocationPath, ctx.Param("user_id"), &userId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter user_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetUser(ctx, userId)
	return err
}

// UpdateUser converts echo context to params.
func (w *ServerInterfaceWrapper) UpdateUser(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "user_id" -------------
	var userId UserId

	err = runtime.BindStyledParameterWithLocation("simple", false, "user_id", runtime.ParamLocationPath, ctx.Param("user_id"), &userId)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter user_id: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.UpdateUser(ctx, userId)
	return err
}

// This is a simple interface which specifies echo.Route addition functions which
// are present on both echo.Echo and echo.Group, since we want to allow using
// either of them for path registration
type EchoRouter interface {
	CONNECT(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	DELETE(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	GET(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	HEAD(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	OPTIONS(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	PATCH(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	POST(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	PUT(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	TRACE(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
}

// RegisterHandlers adds each server route to the EchoRouter.
func RegisterHandlers(router EchoRouter, si ServerInterface) {
	RegisterHandlersWithBaseURL(router, si, "")
}

// Registers handlers, and prepends BaseURL to the paths, so that the paths
// can be served under a prefix.
func RegisterHandlersWithBaseURL(router EchoRouter, si ServerInterface, baseURL string) {

	wrapper := ServerInterfaceWrapper{
		Handler: si,
	}

	router.GET(baseURL+"/todos", wrapper.GetTodoList)
	router.POST(baseURL+"/todos", wrapper.CreateTodo)
	router.DELETE(baseURL+"/todos/:todo_id", wrapper.DeleteTodo)
	router.GET(baseURL+"/todos/:todo_id", wrapper.GetTodo)
	router.PUT(baseURL+"/todos/:todo_id", wrapper.UpdateTodo)
	router.GET(baseURL+"/users", wrapper.GetUserList)
	router.POST(baseURL+"/users", wrapper.CreateUser)
	router.DELETE(baseURL+"/users/:user_id", wrapper.DeleteUser)
	router.GET(baseURL+"/users/:user_id", wrapper.GetUser)
	router.PUT(baseURL+"/users/:user_id", wrapper.UpdateUser)

}
