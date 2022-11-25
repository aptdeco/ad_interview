defmodule AdInterview.ProductsFactory do
  @moduledoc """
    Factory for product model
  """
  alias Faker.{Commerce, Internet}

  defmacro __using__(_opts) do
    quote do
      defp generate_random_decimal(num1, num2) do
        fractional_part =
          1
          |> Faker.random_between(99)
          |> Kernel./(100)

        num1
        |> Faker.random_between(num2)
        |> Kernel.+(fractional_part)
        |> Decimal.from_float()
      end

      def product_factory(attrs) do
        title = Map.get(attrs, :title, Commerce.En.product_name())
        description = Map.get(attrs, :description, Commerce.En.product_name_adjective())
        image_url = Map.get(attrs, :title, Internet.image_url())
        price = Map.get(attrs, :price, Decimal.from_float(Commerce.price()))

        height = Map.get(attrs, :height, generate_random_decimal(1, 90))
        width = Map.get(attrs, :width, generate_random_decimal(1, 90))
        depth = Map.get(attrs, :depth, generate_random_decimal(1, 20))

        address = Map.get_lazy(attrs, :address, fn -> build(:address) end)

        %AdInterview.Products.Product{
          title: title,
          description: description,
          image_url: image_url,
          price: price,
          height: height,
          width: width,
          depth: depth,
          address: address
        }
      end
    end
  end
end
