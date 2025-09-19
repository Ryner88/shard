defmodule ShardWeb.PageControllerTest do
  use ShardWeb.ConnCase, async: true

  test "GET / shows Phoenix banner", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Phoenix Framework"
  end
end
