defmodule MyappWeb.PageController do
  use MyappWeb, :controller

  plug MyappWeb.Plugs.Locale, "en"

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
end
