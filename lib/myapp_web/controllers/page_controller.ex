defmodule MyappWeb.PageController do
  use MyappWeb, :controller

  plug :put_view, html: MyappWeb.PageHTML, json: MyappWeb.PageJSON

  plug MyappWeb.Plugs.Locale, "en"

  def home(conn, _params) do
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:home, layout: false)
  end


end
