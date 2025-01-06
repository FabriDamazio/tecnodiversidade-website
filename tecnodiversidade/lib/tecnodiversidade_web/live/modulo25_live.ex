defmodule TecnodiversidadeWeb.Modulo25Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Iniciativas Tecnodiversas
        </h1>
      </div>
    </section>
    <div class="flex flex-col items-center bg-gray-100 min-h-screen">
      <div class="bg-white p-8 rounded-lg shadow-md max-w-7xl w-full mt-12">
        <h2 class="text-2xl font-semibold mb-6 text-center">
          Você reconhece alguma atividade ou iniciativa que represente a ideia de tecnodiversidade?
        </h2>

        <form phx-submit="enviar_resposta">
          <div class="mb-6">
            <textarea
              name="resposta"
              placeholder="Digite sua resposta aqui"
              rows="8"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
            ></textarea>
          </div>
          <div class="mb-4 text-center">
            <button
              type="submit"
              class="px-6 py-2 bg-[#FECB37]  font-semibold rounded-lg hover:bg-[#deaf26] transition"
            >
              Enviar resposta
            </button>
          </div>
          <div class="flex justify-between mt-4">
            <button
              type="button"
              phx-click="voltar"
              class="px-6 py-2 bg-gray-600 text-white font-semibold rounded-lg hover:bg-gray-700 transition"
            >
              Retornar
            </button>

            <button
              type="button"
              phx-click="avancar"
              class="px-6 py-2 bg-green-600 text-white font-semibold rounded-lg hover:bg-green-700 transition"
            >
              Avançar
            </button>
          </div>
        </form>
      </div>
    </div>
    """
  end

  def handle_event("avancar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/quiz")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/mapeamento-alternativas-tecnodiversas")}
  end

  def handle_event("enviar_resposta", %{"resposta" => resposta}, socket) do
    # SALVAR A RESPOSTA AQUI
    IO.inspect(resposta)

    {:noreply, push_navigate(socket, to: ~p"/modulos/2/quiz")}
  end
end
