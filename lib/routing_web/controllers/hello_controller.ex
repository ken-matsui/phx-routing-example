defmodule RoutingWeb.HelloController do
	use RoutingWeb, :controller

	def index(conn, _params) do
		# 初期がこれ
		#render conn, "index.html"
		# flash messageの生成が以下
		conn
		|> put_flash(:error, "Please put something behind hello/.")
		|> assign(:message, "Welcome Back!")
		|> render("index.html")
	end

	def show(conn, %{"messenger" => messenger}) do
		# renderの第三引数はViewに渡される．
		#render conn, "show.html", messenger: messenger
		conn
		|> put_flash(:info, "Welcome to Phoenix, from flash info!")
		|> render("show.html", messenger: messenger)
	end
end