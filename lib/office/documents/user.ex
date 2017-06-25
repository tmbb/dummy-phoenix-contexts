defmodule Office.Documents.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Office.Documents.User


  schema "users" do
    field :email, :string
    field :name, :string
    field :document_id, :id

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
