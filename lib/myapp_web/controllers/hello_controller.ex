defmodule MyappWeb.HelloController do
  use MyappWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> Plug.Conn.assign(:messenger, messenger)
    |> render(:show)
  end
end
