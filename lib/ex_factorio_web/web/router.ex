defmodule ExFactorioWeb.Web.Router do
  use ExFactorioWeb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExFactorioWeb.Web do
    pipe_through :browser # Use the default browser stack

    get "/blueprint", PageController, :blueprint_parser
    post "/blueprint", PageController, :blueprint_parser
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExFactorioWeb.Web do
  #   pipe_through :api
  # end
end
