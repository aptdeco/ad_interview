defmodule AdInterviewWeb.ApiHomeController do
  use AdInterviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json", %{message: "AptDeco Interview"})
  end
end
