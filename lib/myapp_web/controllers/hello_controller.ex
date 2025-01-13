defmodule MyappWeb.HelloController do
  use MyappWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> Plug.Conn.assign(:messenger, messenger)
    |> render(:show)
  end
end
