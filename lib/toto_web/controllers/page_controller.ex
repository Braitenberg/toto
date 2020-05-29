defmodule TotoWeb.PageController do
  use TotoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
