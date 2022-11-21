defmodule AdInterviewWeb.HomeController do
  use AdInterviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json", %{message: "Welcome to AptDeco Interview!"})
  end
end
