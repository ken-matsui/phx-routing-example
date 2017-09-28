defmodule RoutingWeb.JsonController do
	use RoutingWeb, :controller

	def index(conn, _params) do
		text conn, "Plain text."
	end

	def show(conn, %{"id" => id}) do
		# renderの第三引数はViewに渡される．
		json conn, %{id: id}
	end
end