defmodule Office.Repo.Migrations.CreateOffice.Documents.User do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :billing_address, :string
      add :payment_id, references(:payments, on_delete: :nothing)
      add :document_id, references(:documents, on_delete: :nothing)

      timestamps()
    end

    create index(:users, [:document_id])
  end
end
