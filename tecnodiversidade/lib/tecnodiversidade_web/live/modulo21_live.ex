defmodule TecnodiversidadeWeb.Modulo21Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Módulo 2 - Tecnodiversidade
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <div class="flex justify-center">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/apresentacao_modulo_1.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="mt-8">
        No nosso dia a dia, usamos constantemente a palavra "tecnologia", mas você já parou para pensar sobre seus diferentes significados? Será que realmente compreendemos o que é a tecnologia e o que está por trás das transformações vindas com ela? Quem decide os rumos da tecnologia? A quem ela serve? Quais são seus impactos reais?
      </p>
      <p class="mt-4">
        É sobre isso que vamos falar neste módulo, tendo como principais referências os autores Álvaro Vieira Pinto e Andrew Feenberg.
      </p>
      <p class="mt-4">
        Bons estudos!
      </p>
      <div class="flex justify-end mt-4">
        <button
          class="px-6 py-2 bg-green-600 text-white font-semibold rounded-lg hover:bg-green-700 transition"
          phx-click="avancar"
        >
          Avançar
        </button>
      </div>
    </section>
    """
  end

  def handle_event("avancar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/conceito-tecnodiversidade")}
  end
end
