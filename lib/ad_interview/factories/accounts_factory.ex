defmodule AdInterview.AccountsFactory do
  @moduledoc """
    Factory for address model
  """
  alias Faker.{Address, Person, Phone}

  defmacro __using__(_opts) do
    quote do
      def address_factory(attrs) do
        name = Map.get(attrs, :name, Person.En.name())
        contact_email = Map.get(attrs, :contact_email, Phone.EnUs.phone())
        line_one = Map.get(attrs, :line_one, Address.En.street_name())
        line_two = Map.get(attrs, :line_two, Address.En.building_number())
        city = Map.get(attrs, :city, Address.En.city())
        state = Map.get(attrs, :state, Enum.random(["CA", "NY", "IA"]))
        zip_code = Map.get(attrs, :zip_code, Address.En.zip_code())

        %AdInterview.Accounts.Address{
          name: name,
          contact_email: contact_email,
          line_one: line_one,
          line_two: line_two,
          city: city,
          state: state,
          zip_code: zip_code
        }
      end
    end
  end
end
