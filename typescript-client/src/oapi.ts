import { makeApi, Zodios, type ZodiosOptions } from '@zodios/core';
import { z } from 'zod';

const Todo = z
  .object({
    id: z.number().int(),
    title: z.string(),
    description: z.string().optional(),
    due_date: z.string().optional(),
    created_by: z.number().int().optional(),
    created_at: z.string().datetime({ offset: true }),
    updated_at: z.string().datetime({ offset: true }),
  })
  .passthrough();
const createTodo_Body = z
  .object({
    title: z.string(),
    description: z.string().optional(),
    due_date: z.string().optional(),
  })
  .passthrough();
const User = z
  .object({
    id: z.number().int(),
    name: z.string(),
    role: z.enum(['viewer', 'editor']).optional(),
    todos: Todo,
    created_at: z.string().datetime({ offset: true }),
    updated_at: z.string().datetime({ offset: true }),
  })
  .passthrough();

export const schemas = {
  Todo,
  createTodo_Body,
  User,
};

const endpoints = makeApi([
  {
    method: 'get',
    path: '/todos',
    alias: 'getTodoList',
    requestFormat: 'json',
    response: z.array(Todo),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'post',
    path: '/todos',
    alias: 'createTodo',
    requestFormat: 'json',
    parameters: [
      {
        name: 'body',
        type: 'Body',
        schema: createTodo_Body,
      },
    ],
    response: Todo,
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'get',
    path: '/todos/:todo_id',
    alias: 'getTodo',
    requestFormat: 'json',
    parameters: [
      {
        name: 'todo_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: Todo,
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'put',
    path: '/todos/:todo_id',
    alias: 'updateTodo',
    requestFormat: 'json',
    parameters: [
      {
        name: 'body',
        type: 'Body',
        schema: createTodo_Body,
      },
      {
        name: 'todo_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: z.array(Todo),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'delete',
    path: '/todos/:todo_id',
    alias: 'deleteTodo',
    requestFormat: 'json',
    parameters: [
      {
        name: 'todo_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: z.void(),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'get',
    path: '/users',
    alias: 'getUserList',
    requestFormat: 'json',
    response: z.array(User),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'post',
    path: '/users',
    alias: 'createUser',
    requestFormat: 'json',
    parameters: [
      {
        name: 'body',
        type: 'Body',
        schema: z.object({ name: z.string() }).passthrough(),
      },
    ],
    response: User,
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'get',
    path: '/users/:user_id',
    alias: 'getUser',
    requestFormat: 'json',
    parameters: [
      {
        name: 'user_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: User,
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'put',
    path: '/users/:user_id',
    alias: 'updateUser',
    requestFormat: 'json',
    parameters: [
      {
        name: 'body',
        type: 'Body',
        schema: z.object({ name: z.string() }).passthrough(),
      },
      {
        name: 'user_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: z.array(User),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
  {
    method: 'delete',
    path: '/users/:user_id',
    alias: 'deleteUser',
    requestFormat: 'json',
    parameters: [
      {
        name: 'user_id',
        type: 'Path',
        schema: z.number().int(),
      },
    ],
    response: z.void(),
    errors: [
      {
        status: 400,
        description: `failed`,
        schema: z.void(),
      },
    ],
  },
]);

export const api = new Zodios('http://localhost:9995', endpoints);

export function createApiClient(baseUrl: string, options?: ZodiosOptions) {
  return new Zodios(baseUrl, endpoints, options);
}
