defmodule Office.Repo.Migrations.CreateOffice.Payments.Payment do
  use Ecto.Migration

  def change do
    create table(:payments_payments) do
      add :amount, :decimal
      add :paid, :boolean, default: false, null: false

      timestamps()
    end

  end
end
