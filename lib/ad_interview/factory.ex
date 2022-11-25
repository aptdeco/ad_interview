defmodule AdInterview.Factory do
  @moduledoc """
    Parent module to group all seed data factories
  """
  use ExMachina.Ecto, repo: AdInterview.Repo

  use AdInterview.AccountsFactory
  use AdInterview.ProductsFactory
end
