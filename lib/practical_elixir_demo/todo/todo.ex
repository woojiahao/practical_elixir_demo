defmodule PracticalElixirDemo.Todo do
  alias PracticalElixirDemo.Todo.TodoItem

  def get_items do
    [
      %TodoItem{
        title: "Finish homework"
      },
      %TodoItem{
        title: "Find accommodation",
        description: "Ideally somewhere that is cheap and quiet"
      },
      %TodoItem{
        title: "Take out the rubbish",
        is_done?: true
      }
    ]
  end
end
