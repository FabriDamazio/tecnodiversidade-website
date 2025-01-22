defmodule TecnodiversidadeWeb.Modulo35Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 35

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
          Conclusão - Módulo 3
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Concluímos este curso introdutório aos conceitos de tecnologia e de tecnodiversidade. Buscamos mostrar como estes conceitos se relacionam com a Educação Profissional e Tecnológica, especialmente no âmbito dos Institutos Federais de Educação, Ciência e Tecnologia.
      </p>
      <p class="mt-4">
        A tecnodiversidade oferece um novo olhar para a educação profissional e tecnológica, incentivando o diálogo entre diferentes saberes, a valorização da diversidade cultural e a busca por futuros tecnológicos mais inclusivos e sustentáveis. A aplicação da tecnodiversidade na educação pode contribuir para o desenvolvimento de indivíduos mais críticos, criativos e engajados com seus contextos sociais e ambientais e com o mundo do trabalho.
      </p>
      <p class="mt-4">
        Esperamos que você continue aprendendo sobre o tema e contribua para as discussões que estão surgindo nessa área.
      </p>
      <p class="mt-4">
        Obrigada pela participação!
      </p>
      <p class="mt-4">
        Obs.: Por favor, não se esqueça de avaliar o curso. Sua opinião é essencial para nos ajudar a aprimorar continuamente!
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
    if(socket.assigns[:user_id] != nil) do
      ProgressTracker.save_user_progress(@block_id, socket.assigns[:user_id])
    end

    {:noreply, push_navigate(socket, to: ~p"/avaliacao-curso")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/3/quiz")}
  end
end
