defmodule PracticalElixirDemoWeb.TodoController do
  use PracticalElixirDemoWeb, :controller

  def get_todo_list(conn, _params) do
    json(conn, PracticalElixirDemo.Todo.get_items())
  end
end
