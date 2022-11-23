defmodule AdInterviewWeb.AddressView do
  use AdInterviewWeb, :view

  def render("show.json", %{address: address}) do
    %{status: :ok, data: render_one(address, __MODULE__, "address.json")}
  end

  def render("address.json", %{address: address}) do
    address
  end
end
