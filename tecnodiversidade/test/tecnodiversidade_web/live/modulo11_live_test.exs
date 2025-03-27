defmodule TecnodiversidadeWeb.Modulo11LiveTest do
  use TecnodiversidadeWeb.ConnCase

  import Phoenix.LiveViewTest
  import Tecnodiversidade.AccountsFixtures
  import Ecto.Query

  alias Tecnodiversidade.Repo
  alias Tecnodiversidade.ProgressTracker.UserProgress

  test "renders modulo11 page", %{conn: conn} do
    {:ok, _lv, html} = live(conn, ~p"/modulos/1/apresentacao")

    assert html =~ "Módulo 1"
  end

  test "ao clicar no botao, avança para o próximo módulo", %{conn: conn} do
    {:ok, lv, _html} = live(conn, ~p"/modulos/1/apresentacao")

    lv
    |> element("button", "Avançar")
    |> render_click()

    assert_redirect(lv, ~p"/modulos/1/pergunta")
  end

  test "salvar o progresso caso o usuario esteja logado", %{conn: conn} do
    user = user_fixture()

    assert Repo.one(
             from x in UserProgress,
               where: x.user_id == ^user.id
           ) == nil

    {:ok, lv, _html} =
      conn
      |> log_in_user(user)
      |> live(~p"/modulos/1/apresentacao")

    lv
    |> element("button", "Avançar")
    |> render_click()

    user_progress =
      Repo.one(
        from x in UserProgress,
          where: x.user_id == ^user.id
      )

    assert user_progress.user_id == user.id
    assert user_progress.block_id == 11
  end

  test "não salva nenhum progresso se o usuário não estiver logado", %{conn: conn} do
    {:ok, lv, _html} =
      conn
      |> live(~p"/modulos/1/apresentacao")

    lv
    |> element("button", "Avançar")
    |> render_click()

    assert Repo.all(from(x in UserProgress)) == []
  end
end
