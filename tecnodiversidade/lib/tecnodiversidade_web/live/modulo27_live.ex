defmodule TecnodiversidadeWeb.Modulo27Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Conclusão - Módulo 2
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Concluímos o módulo 2 com a introdução ao pensamento de Yuk Hui e seu conceito de tecnodiversidade. Suas contribuições nos convidam a refletir sobre novos modelos de desenvolvimento tecnológico e a importância de valorizarmos a diversidade de técnicas e culturas. Como lembrete, é importante ressaltar que a tecnodiversidade não propõe um retorno às tradições ou a rejeição das tecnologias modernas, mas, sim, a busca e apropriação de tecnologias que considerem as diferentes cosmotécnicas.
      </p>
      <p class="mt-4">
        No próximo módulo, abordaremos a Educação Profissional e Tecnológica como um espaço de debate para as questões relacionadas à tecnologia e à tecnodiversidade.
      </p>
      <p class="mt-4">
        Até o próximo módulo!
      </p>
      <div class="flex justify-between mt-8">
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
    </section>
    """
  end

  def handle_event("avancar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/3/apresentacao")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/quiz")}
  end
end
