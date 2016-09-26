defmodule Raidbuilder.PageController do
  use Raidbuilder.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def foo(conn, _params) do
    render conn, values: [1,2,3]
  end
end
