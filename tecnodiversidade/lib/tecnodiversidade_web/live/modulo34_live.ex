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
            1. De acordo com o conceito de tecnodiversidade, o que se busca promover na Educação Profissional e Tecnológica?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="1" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) A padronização universal das tecnologias utilizadas nos cursos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) A valorização de diferentes cosmotécnicas e saberes técnicos e tecnológicos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) A exclusão de formas tradicionais de conhecimento técnico.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) A adoção exclusiva de tecnologias ocidentais avançadas.
              </label>
            </div>
          </form>
          <p id="answer-feedback-1" class="mt-4 text-green-600 font-medium hidden"></p>
        </div>
        <!-- Pergunta 2 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            2. O conceito de tecnodiversidade na Educação Profissional e Tecnológica (EPT) está relacionado a:
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="2" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Padronização global de tecnologias para a educação.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Desenvolvimento de tecnologias exclusivas para grandes centros urbanos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Reconhecimento e valorização de diferentes formas de saber técnico e tecnológico.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Eliminação de tecnologias tradicionais em favor das mais avançadas.
              </label>
            </div>
          </form>
          <p id="answer-feedback-2" class="mt-4 text-green-600 font-medium hidden"></p>
        </div>
        <!-- Pergunta 3 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            3. Qual é o principal objetivo da tecnologia social na Educação Profissional e Tecnológica?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="3" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Implementar tecnologias de ponta sem considerar o contexto local.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Resolver problemas sociais e ambientais por meio de processos participativos.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Promover a competição tecnológica entre regiões.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Ignorar a diversidade cultural em favor de soluções universais.
              </label>
            </div>
          </form>
          <p id="answer-feedback-3" class="mt-4 text-green-600 font-medium hidden"></p>
        </div>
        <!-- Pergunta 4 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            4. Qual o papel da EPT na promoção da tecnodiversidade, segundo o conceito de cosmotécnicas?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="4" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Implementar tecnologias globais sem adaptação ao contexto local.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Valorizar diferentes formas de interação entre técnica, cultura e sociedade.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Substituir conhecimentos locais por técnicas tecnológicas universais.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Priorizar exclusivamente as demandas econômicas em detrimento das culturais.
              </label>
            </div>
          </form>
          <p id="answer-feedback-4" class="mt-4 text-green-600 font-medium hidden"></p>
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
      "2" => "c",
      "3" => "b",
      "4" => "b"
    }

    is_correct = Map.get(answers, id) == answer

    {:noreply, push_event(socket, "show_feedback", %{question_id: id, is_correct: is_correct})}
  end
end
