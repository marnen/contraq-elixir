defmodule Contraq.PageController do
  use Contraq.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
