defmodule AdInterviewWeb.ProductView do
  use AdInterviewWeb, :view

  def render("show.json", %{product: product}) do
    %{status: :ok, data: render_one(product, __MODULE__, "product.json")}
  end

  def render("product.json", %{product: product}) do
    product
  end
end
