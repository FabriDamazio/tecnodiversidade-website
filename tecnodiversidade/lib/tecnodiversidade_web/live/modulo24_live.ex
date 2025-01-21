defmodule TecnodiversidadeWeb.Modulo24Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 24

  def mount(_params, session, socket) do
    if(session["user_token"] == nil) do
      {:ok, socket, layout: false}
    else
      socket =
        assign_new(
          socket,
          :user_id,
          fn ->
            case Accounts.get_user_by_session_token(session["user_token"]) do
              %User{} = user -> user.id
              _ -> nil
            end
          end
        )

      {:ok, socket, layout: false}
    end
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Mapeamento de alternativas tecnodiversas
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Descubra agora iniciativas que apresentam a ideia de tecnodiversidade:
      </p>
      <p class="highlight mt-4">
        Technodiversity: aliança global e multissetorial
      </p>
      <p class="mt-4">
        O Instituto de Tecnologia e Sociedade (ITS) promove uma rede global e multissetorial, buscando fomentar o diálogo sobre novas formas de desenvolvimento tecnológico, com ênfase na questão da Inteligência Artificial.
        Saiba mais:
        <a
          href="https://www.technodiversity.org/pt-br"
          target="_blank"
          class="text-blue-500 hover:underline"
        >
          https://www.technodiversity.org/pt-brs
        </a>
      </p>
      <p class="highlight mt-4">
        Plano Brasileiro de Inteligência Artificial (PBIA) 2024-2028
      </p>
      <p class="mt-4">
        O plano brasileiro para o desenvolvimento de inteligência artificial com modelos de linguagem em português busca contemplar a diversidade cultural, social e linguística. O plano prevê a criação de diferentes ferramentas para áreas da saúde, agricultura, educação, meio ambiente, desenvolvimento social etc.
        Saiba mais:
        <a
          href="https://www.gov.br/lncc/pt-br/assuntos/noticias/ultimas-noticias-1/plano-brasileiro-de-inteligencia-artificial-pbia-2024-2028"
          target="_blank"
          class="text-blue-500 hover:underline"
        >
          https://www.gov.br/lncc/pt-br/assuntos/noticias/ultimas-noticias-1/plano-brasileiro-de-inteligencia-artificial-pbia-2024-2028
        </a>
      </p>
      <p class="highlight mt-4">
        Núcleo de Tecnologia do MTST (Movimento dos Trabalhadores Sem-Teto)
      </p>
      <p class="mt-4">
        O Núcleo de Tecnologia do MTST desenvolve ferramentas e se apropria de técnicas existentes para contribuir com o trabalho realizado pelo movimento. Também, disponibilizam cursos de programação e formação técnica para a comunidade.
        Saiba mais:
        <a
          href="https://www.nucleodetecnologia.com.br/"
          target="_blank"
          class="text-blue-500 hover:underline"
        >
          https://www.nucleodetecnologia.com.br/
        </a>
      </p>
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto bg-gray-50">
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
    if(socket.assigns[:user_id] != nil) do
      ProgressTracker.save_user_progress(@block_id, socket.assigns[:user_id])
    end

    {:noreply, push_navigate(socket, to: ~p"/modulos/2/pergunta")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/discussoes-tecnodiversidade")}
  end
end
