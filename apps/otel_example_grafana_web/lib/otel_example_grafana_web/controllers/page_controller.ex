defmodule OtelExampleGrafanaWeb.PageController do
  use OtelExampleGrafanaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
