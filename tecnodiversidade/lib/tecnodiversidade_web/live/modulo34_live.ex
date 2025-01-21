defmodule TecnodiversidadeWeb.Modulo34Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 34

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
          Quiz
        </h1>
      </div>
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <div class="space-y-8">
        <!-- Pergunta 1 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            1. Qual das seguintes afirmativas melhor descreve a visão de Álvaro Vieira Pinto sobre tecnologia?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="1" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) É composta apenas por artefatos e ferramentas.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) É resultado do trabalho humano para transformar a realidade.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) É sempre neutra e independente de fatores sociais.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) É um conjunto fixo de regras técnicas universais.
              </label>
            </div>
          </form>
          <p id="answer-feedback-1" class="mt-4 text-green-600 font-medium hidden"></p>
        </div>
        <!-- Pergunta 2 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            2. O que Vieira Pinto critica na ideologização da tecnologia?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="2" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) A valorização do trabalho humano na criação de artefatos tecnológicos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) A transformação da técnica em uma entidade autônoma, separada da ação humana.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) A aceitação de diferentes projetos tecnológicos para cada sociedade.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) A abordagem técnica como sinônimo de desenvolvimento social.
              </label>
            </div>
          </form>
          <p id="answer-feedback-2" class="mt-4 text-green-600 font-medium hidden">
            Resposta correta: b)
          </p>
        </div>
        <!-- Pergunta 3 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            3. De acordo com Feenberg, qual é o principal objetivo do Construtivismo Crítico?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="3" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Defender a neutralidade da tecnologia.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Provar que a tecnologia é determinada exclusivamente por fatores técnicos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Promover o controle democrático e a participação social no desenvolvimento tecnológico.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Demonstrar que a tecnologia é completamente autônoma.
              </label>
            </div>
          </form>
          <p id="answer-feedback-3" class="mt-4 text-green-600 font-medium hidden">
            Resposta correta: c)
          </p>
        </div>
        <!-- Pergunta 4 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            4. Como Feenberg critica as visões tradicionais sobre tecnologia?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="4" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Argumentando que elas ignoram os valores sociais e políticos presentes na tecnologia.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Defendendo a superioridade do determinismo tecnológico.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Rejeitando a ideia de que a tecnologia é socialmente construída.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Sustentando que a tecnologia não tem impacto ético ou social.
              </label>
            </div>
          </form>
          <p id="answer-feedback-4" class="mt-4 text-green-600 font-medium hidden">
            Resposta correta: a)
          </p>
        </div>
      </div>

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

    {:noreply, push_navigate(socket, to: ~p"/modulos/3/encerramento")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/3/tecnodiversidade-ept")}
  end

  def handle_event("validate_answer", %{"question_id" => id, "answer" => answer}, socket) do
    answers = %{
      "1" => "b",
      "2" => "b",
      "3" => "c",
      "4" => "a"
    }

    is_correct = Map.get(answers, id) == answer

    {:noreply, push_event(socket, "show_feedback", %{question_id: id, is_correct: is_correct})}
  end
end
