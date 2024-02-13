defmodule PracticalElixirDemo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todo, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string
      add :description, :string
      add :is_done, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
