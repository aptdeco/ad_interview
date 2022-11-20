defmodule AdInterviewWeb.Router do
  use AdInterviewWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AdInterviewWeb do
    pipe_through :api
  end
end
