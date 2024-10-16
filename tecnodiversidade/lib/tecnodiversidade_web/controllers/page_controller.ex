defmodule TecnodiversidadeWeb.PageController do
  use TecnodiversidadeWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def recomendacoes(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :recomendacoes, layout: false)
  end
end
