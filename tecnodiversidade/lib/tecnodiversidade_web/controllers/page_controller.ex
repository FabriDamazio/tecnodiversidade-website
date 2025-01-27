defmodule TecnodiversidadeWeb.PageController do
  use TecnodiversidadeWeb, :controller

  alias Tecnodiversidade.ProgressTracker

  def home(conn, _params) do
    next_block =
      get_in(conn.assigns.current_user.id)
      |> ProgressTracker.get_next_block()

    render(conn, :home, layout: false, next_block: next_block)
  end

  def recomendacoes(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :recomendacoes, layout: false)
  end

  def contatos(conn, _params) do
    render(conn, :contatos, layout: false)
  end

  def modulos(conn, _params) do
    render(conn, :modulos, layout: false)
  end
end
