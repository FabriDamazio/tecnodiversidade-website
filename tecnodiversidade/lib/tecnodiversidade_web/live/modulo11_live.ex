defmodule TecnodiversidadeWeb.Modulo11Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Banner com imagem título
        </h1>
      </div>
    </section>

    <section class="mt-8">
      <div class="flex justify-center">
        <video width="640" height="360" controls>
          <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <div class="flex justify-end mt-4">
        <button
          class="px-6 py-2 bg-gray-700 text-white font-semibold rounded-lg hover:bg-gray-800 transition"
          phx-click="avancar"
        >
          Avançar
        </button>
      </div>
    </section>
    """
  end

  def handle_event("avancar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/1/pergunta")}
  end
end
