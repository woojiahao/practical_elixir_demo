defmodule PracticalElixirDemoWeb.PageHTML do
  use PracticalElixirDemoWeb, :html

  embed_templates "page_html/*"

  def todo_item(assigns) do
    ~H"""
    <div class="flex gap-x-4 mb-4 last:mb-0 items-center">
      <%= if @item.is_done? do %>
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
            <%= if @item.is_done? do %>
              <button class="bg-blue-300 px-3 py-1 font-bold rounded-md text-sm">Mark as Done</button>
            <% else %>
              <button class="bg-green-300 px-3 py-1 font-bold rounded-md text-sm">
                Mark as Not Done
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
