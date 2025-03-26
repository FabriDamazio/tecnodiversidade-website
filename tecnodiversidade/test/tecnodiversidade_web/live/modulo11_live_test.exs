defmodule TecnodiversidadeWeb.Modulo11LiveTest do
  use TecnodiversidadeWeb.ConnCase

  import Phoenix.LiveViewTest

  test "renders modulo11 page", %{conn: conn} do
    {:ok, _lv, html} = live(conn, ~p"/modulos/1/apresentacao")

    assert html =~ "Módulo 1"
  end

  test "avança para o próximo módulo", %{conn: conn} do
    {:ok, lv, _html} = live(conn, ~p"/modulos/1/apresentacao")

    lv
    |> element("button", "Avançar")
    |> render_click()

    assert_redirect(lv, ~p"/modulos/1/pergunta")
  end
end
