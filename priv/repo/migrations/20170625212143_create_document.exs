defmodule Office.Repo.Migrations.CreateOffice.Documents.Document do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :title, :string
      add :body, :string
      add :owner_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:documents, [:owner_id])
  end
end
