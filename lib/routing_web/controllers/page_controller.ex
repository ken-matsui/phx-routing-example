defmodule RoutingWeb.PageController do
  use RoutingWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
