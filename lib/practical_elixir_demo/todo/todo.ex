defmodule PracticalElixirDemo.Todo do
  alias PracticalElixirDemo.Repo
  use Ecto.Schema
  import Ecto.Query
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "todo" do
    field :description, :string
    field :title, :string
    field :is_done, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  def get_items() do
    Repo.all(__MODULE__)
  end

  def create_todo(title, description \\ nil) do
    Repo.insert(%__MODULE__{
      title: title,
      description: description,
      is_done: false
    })
  end

  def mark_todo(id) do
    todo = Repo.one!(from t in __MODULE__, where: t.id == ^id)
    updated_todo = Ecto.Changeset.change(todo, is_done: !todo.is_done)
    Repo.update!(updated_todo)
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :description, :is_done])
    |> validate_required([:title])
  end
end
