defmodule AdInterview.Accounts do
  import Ecto.Query, warn: false

  alias AdInterview.Repo
  alias AdInterview.Accounts.Address

  def create_address(params \\ %{}) do
    %Address{}
    |> Address.changeset(params)
    |> Repo.insert()
  end
end
