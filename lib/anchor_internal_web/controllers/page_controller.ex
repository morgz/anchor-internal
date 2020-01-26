defmodule AnchorInternalWeb.PageController do
  use AnchorInternalWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
