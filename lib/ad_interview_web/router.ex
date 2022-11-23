defmodule AdInterviewWeb.Router do
  use AdInterviewWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AdInterviewWeb do
    pipe_through :api

    get "/", HomeController, :index
  end

  scope "/api", AdInterviewWeb do
    pipe_through :api

    get "/", ApiHomeController, :index

    post "/addresses", AddressController, :create

    get "/products/:id", ProductController, :show
  end
end
