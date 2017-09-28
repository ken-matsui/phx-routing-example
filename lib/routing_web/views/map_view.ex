defmodule RoutingWeb.MapView do
  use RoutingWeb.Web, :view

  def connection_keys(conn) do
    conn
    |> Map.from_struct()
    |> Map.keys()
  end
end