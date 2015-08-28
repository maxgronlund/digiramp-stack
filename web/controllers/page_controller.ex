defmodule Digiramp.PageController do
  use Digiramp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
