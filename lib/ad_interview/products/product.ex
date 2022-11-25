defmodule AdInterview.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias AdInterview.Accounts.Address

  @required_fields [:title]
  @optional_fields [
    :description,
    :image_url,
    :price,
    :height,
    :width,
    :depth
  ]

  @derive {Jason.Encoder,
           only: [:depth, :description, :height, :image_url, :price, :title, :width]}
  schema "products" do
    field :title, :string
    field :description, :string
    field :image_url, :string
    field :price, :decimal
    field :height, :decimal
    field :width, :decimal
    field :depth, :decimal

    belongs_to(:address, Address)

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
  end
end
