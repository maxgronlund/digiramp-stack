defmodule Digiramp.PageControllerTest do
  use Digiramp.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to DigiRAMP"
  end
end
