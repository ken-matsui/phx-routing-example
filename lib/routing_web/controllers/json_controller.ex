defmodule RoutingWeb.JsonController do
	use RoutingWeb, :controller

	# def index(conn, _params) do
	# 	# 初期がこれ
	# 	#render conn, "index.html"
	# 	# flash messageの生成が以下
	# 	conn
	# 	|> put_flash(:error, "Please put something behind hello/.")
	# 	|> render("index.html")
	# end

	def show(conn, %{"id" => id}) do
		# renderの第三引数はViewに渡される．
		#render conn, "show.html", messenger: messenger
		json conn, %{id: id}
	end
end