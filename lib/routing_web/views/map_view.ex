defmodule HelloPhoenix.PageView do
  use HelloPhoenix.Web, :view

  def connection_keys(conn) do
    conn
    |> Map.from_struct()
    |> Map.keys()
  end
end