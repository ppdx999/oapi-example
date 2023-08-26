import { api } from '../src/oapi.js';

describe('api', () => {
  it('getTodoList', async () => {
    const res = await api.getTodoList();
    console.log(res);
  });
});
