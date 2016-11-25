defmodule ContraqElixir.PageController do
  use ContraqElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
