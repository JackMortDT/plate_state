defmodule PlateStateWeb.PageController do
  use PlateStateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
