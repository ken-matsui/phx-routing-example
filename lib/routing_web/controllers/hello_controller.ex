defmodule RoutingWeb.HelloController do
	use RoutingWeb, :controller

	def index(conn, _params) do
		render conn, "index.html"
	end

	def show(conn, %{"messenger" => messenger}) do
		# renderの第三引数はViewに渡される．
		render conn, "show.html", messenger: messenger
	end
end