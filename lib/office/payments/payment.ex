defmodule Office.Payments.Payment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Office.Payments.Payment


  schema "payments" do
    field :amount, :decimal
    field :paid, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(%Payment{} = payment, attrs) do
    payment
    |> cast(attrs, [:amount, :paid])
    |> validate_required([:amount, :paid])
  end
end
