defmodule PracticalElixirDemoWeb.TodoLive do
  alias PracticalElixirDemo.Todo
  use PracticalElixirDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, todo_list: Todo.get_items())
    {:ok, socket, layout: false}
  end

  def handle_event("add-todo", %{"task-name" => task_name}, socket) do
    Todo.create_todo(task_name)
    {:noreply, assign(socket, todo_list: Todo.get_items())}
  end

  def handle_event("mark-todo", %{"id" => task_id}, socket) do
    Todo.mark_todo(task_id)
    {:noreply, assign(socket, todo_list: Todo.get_items())}
  end

  def todo_item(assigns) do
    ~H"""
    <div class="flex gap-x-4 mb-4 last:mb-0 items-center">
      <%= if @item.is_done do %>
        <p>✅</p>
      <% else %>
        <p>❌</p>
      <% end %>
      <div class="w-full">
        <div class="flex justify-between items-center w-full">
          <p>
            <%= @item.title %>
          </p>

          <div>
            <%= if @item.is_done do %>
              <button
                class="bg-blue-300 px-3 py-1 font-bold rounded-md text-sm"
                type="button"
                phx-value-id={@id}
                phx-click="mark-todo"
              >
                Mark as Not Done
              </button>
            <% else %>
              <button
                class="bg-green-300 px-3 py-1 font-bold rounded-md text-sm"
                type="button"
                phx-value-id={@id}
                phx-click="mark-todo"
              >
                Mark as Done
              </button>
            <% end %>
            <button class="bg-yellow-300 px-3 py-1 font-bold rounded-md text-sm">Edit</button>
            <button class="bg-red-300 px-3 py-1 font-bold rounded-md text-sm">Delete</button>
          </div>
        </div>
        <p class="italic">
          <%= @item.description %>
        </p>
      </div>
    </div>
    """
  end
end
