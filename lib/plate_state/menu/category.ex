defmodule PlateState.Menu.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias PlateState.Menu.Category


  schema "categories" do
    field :description, :string
    field :name, :string, null: false

    has_many :items, PlateState.Menu.Item

    timestamps()
  end

  @doc false
  def changeset(%Category{} = category, attrs) do
    category
    |> cast(attrs, [:description, :name])
    |> validate_required([:name])
  end
end
