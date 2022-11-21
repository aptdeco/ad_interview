defmodule AdInterviewWeb.HomeView do
  use AdInterviewWeb, :view

  def render("index.json", %{message: message} = _data) do
    %{status: :ok, data: message}
  end
end
