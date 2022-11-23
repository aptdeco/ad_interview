defmodule AdInterview.Accounts.Address do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:name]
  @optional_fields [:city, :state, :zip_code, :contact_email, :line_one, :line_two]

  @derive {Jason.Encoder,
           only: [:name, :city, :state, :zip_code, :contact_email, :line_one, :line_two]}
  schema "addresses" do
    field :city, :string
    field :contact_email, :string
    field :line_one, :string
    field :line_two, :string
    field :name, :string
    field :state, :string
    field :zip_code, :string

    timestamps()
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, @optional_fields ++ @required_fields)
    |> validate_required(@required_fields)
  end
end
