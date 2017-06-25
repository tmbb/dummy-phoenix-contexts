defmodule Office.Repo.Migrations.CreateOffice.CreateTables do
  use Ecto.Migration

  def change do
    # Documents
    create table(:documents) do
      add :title, :string
      add :body, :string

      timestamps()
    end

    # Payments
    create table(:payments) do
      add :amount, :decimal
      add :paid, :boolean, default: false, null: false

      timestamps()
    end

    # Users
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
