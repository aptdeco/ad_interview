defmodule AdInterviewWeb.AddressController do
  use AdInterviewWeb, :controller

  alias AdInterview.Accounts

  def create(conn, %{"address" => address_params}) do
    case Accounts.create_address(address_params) do
      {:ok, address} ->
        conn
        |> put_status(:created)
        |> render("show.json", address: address)

      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> put_view(AdInterviewWeb.ChangesetView)
        |> render("error.json", changeset: changeset)
    end
  end

  def create(conn, _) do
    conn
    |> put_status(:not_found)
    |> put_view(AdInterviewWeb.ErrorView)
    |> render(:"404")
  end
end
