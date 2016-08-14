defmodule Chiliweb.PageControllerTest do
  use Chiliweb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "ChiliSoft"
  end
end
