defmodule PracticalElixirDemo.Repo do
  use Ecto.Repo,
    otp_app: :practical_elixir_demo,
    adapter: Ecto.Adapters.SQLite3
end
