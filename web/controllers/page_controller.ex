defmodule Chiliweb.PageController do
  use Chiliweb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def jobs(conn, _params) do
      render conn, "jobs.html"
  end
end
