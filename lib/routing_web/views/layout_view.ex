defmodule RoutingWeb.LayoutView do
  use RoutingWeb, :view

  # この関数は，app.html.eexから参照される．
  def title do
  	"hogehoge"
  end

  def get_controller_name(conn), do: controller_module(conn)
  def get_action_name(conn), do: get_action_name(conn)
end
