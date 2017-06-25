defmodule Office.Payments.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Office.Payments.User


  schema "payments_users" do
    field :payment_id, :id

    field :billing_address, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:billing_address])
    |> validate_required([:billing_address])
  end
end
