defmodule AdInterview.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:title]
  @optional_fields [
    :description,
    :image_url,
    :height,
    :width,
    :depth,
    :price,
    :description,
    :image_url,
    :height,
    :width,
    :depth,
    :price,
    :bank_id
  ]

  @derive {Jason.Encoder,
           only: [:depth, :description, :height, :image_url, :price, :title, :width]}
  schema "products" do
    field :bank_id, :string
    field :depth, :decimal
    field :description, :string
    field :height, :decimal
    field :image_url, :string
    field :price, :decimal
    field :title, :string
    field :width, :decimal
    field :address_id, :id

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
  end
end
