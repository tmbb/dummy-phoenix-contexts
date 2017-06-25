defmodule Office.Documents.Document do
  use Ecto.Schema
  import Ecto.Changeset
  alias Office.Documents.Document


  schema "documents_documents" do
    field :body, :string
    field :title, :string
    field :owner_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Document{} = document, attrs) do
    document
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
