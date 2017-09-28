defmodule RoutingWeb.Router do
  use RoutingWeb, :router

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

  scope "/", RoutingWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    ###
    # Add by me.
    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show
    # return json.
    get "/json", JsonController, :index
    get "/json/:id", JsonController, :show
    # PUTなどのrequest類全てを追加してくれる．onlyで指定．
    resources "/users", UserController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", RoutingWeb do
  #   pipe_through :api
  # end
end
