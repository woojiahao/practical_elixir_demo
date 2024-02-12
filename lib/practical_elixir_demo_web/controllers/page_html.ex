defmodule PracticalElixirDemoWeb.PageHTML do
  use PracticalElixirDemoWeb, :html

  embed_templates "page_html/*"

  def todo_item(assigns) do
    ~H"""
    <%= if @item.is_done? do %>
      <p>✅</p>
    <% else %>
      <p>❌</p>
    <% end %>
    <p>
      <%= @item.title %>
    </p>
    <p>
      <%= @item.description %>
    </p>
    """
  end
end
