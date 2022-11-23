defmodule AdInterviewWeb.ProductController do
  use AdInterviewWeb, :controller

  alias AdInterview.Products.Product
  alias AdInterview.Repo

  def show(conn, %{"id" => id}) do
    case Repo.get(Product, id) do
      %Product{} = product ->
        render(conn, "show.json", %{product: product})

      _ ->
        conn
        |> put_status(:not_found)
        |> put_view(AdInterviewWeb.ErrorView)
        |> render(:"404")
    end
  end

  def show(conn, _) do
    conn
    |> put_status(:not_found)
    |> put_view(AdInterviewWeb.ErrorView)
    |> render(:"404")
  end
end
