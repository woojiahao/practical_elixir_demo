defmodule PracticalElixirDemoWeb.PageHTML do
  use PracticalElixirDemoWeb, :html

  embed_templates "page_html/*"

  def todo_item(assigns) do
    ~H"""
    <div class="flex gap-x-4 mb-4 last:mb-0">
      <%= if @item.is_done? do %>
        <p>✅</p>
      <% else %>
        <p>❌</p>
      <% end %>
      <div>
        <p>
          <%= @item.title %>
        </p>
        <p class="italic">
          <%= @item.description %>
        </p>
      </div>
    </div>
    """
  end
end
