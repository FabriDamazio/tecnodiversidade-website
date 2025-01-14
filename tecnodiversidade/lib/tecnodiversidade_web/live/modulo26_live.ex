defmodule TecnodiversidadeWeb.Modulo26Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
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
            1. Qual é a principal crítica de Yuk Hui em relação à tecnologia moderna?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="1" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Falta de inovação técnica.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Universalidade e homogeneidade das tecnologias modernas.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Excesso de investimento em inteligência artificial.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Uso de tecnologias tradicionais em vez de modernas.
              </label>
            </div>
          </form>
          <p id="answer-feedback-1" class="mt-4 text-green-600 font-medium hidden">
          </p>
        </div>
        <!-- Pergunta 2 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            2. O conceito de cosmotécnica refere-se a:
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="2" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) A busca pela universalização das técnicas.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) A integração entre cosmos e moral em práticas técnicas de cada cultura.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) O desenvolvimento de tecnologias baseadas exclusivamente na inteligência artificial.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) A competição tecnológica entre diferentes países.
              </label>
            </div>
          </form>
          <p id="answer-feedback-2" class="mt-4 text-green-600 font-medium hidden">
          </p>
        </div>
        <!-- Pergunta 3 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            3. O movimento decolonial dialoga com a tecnodiversidade ao:
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="3" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Promover a padronização global das tecnologias.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Reforçar as epistemologias eurocêntricas.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Questionar padrões históricos de dominação tecnológica.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Impedir o avanço das tecnologias contemporâneas.
              </label>
            </div>
          </form>
          <p id="answer-feedback-3" class="mt-4 text-green-600 font-medium hidden">
          </p>
        </div>
        <!-- Pergunta 4 -->
        <div class="p-4 border rounded-lg bg-gray-100">
          <p class="text-lg font-semibold mb-2">
            4. Por que a tecnodiversidade é relevante no contexto contemporâneo?
          </p>
          <form phx-change="validate_answer">
            <input type="hidden" name="question_id" value="4" />
            <div class="space-y-2">
              <label class="block">
                <input type="radio" name="answer" value="a" class="mr-2" />
                a) Porque busca eliminar todas as formas de tecnologia moderna.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="b" class="mr-2" />
                b) Porque valoriza trajetórias tecnológicas homogêneas.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="c" class="mr-2" />
                c) Porque ajuda a enfrentar desafios globais, como o Antropoceno.
              </label>
              <label class="block">
                <input type="radio" name="answer" value="d" class="mr-2" />
                d) Porque incentiva a padronização tecnológica em larga escala.
              </label>
            </div>
          </form>
          <p id="answer-feedback-4" class="mt-4 text-green-600 font-medium hidden">
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
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/encerramento")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/pergunta")}
  end

  def handle_event("validate_answer", %{"question_id" => id, "answer" => answer}, socket) do
    answers = %{
      "1" => "b",
      "2" => "b",
      "3" => "c",
      "4" => "c"
    }

    is_correct = Map.get(answers, id) == answer

    {:noreply, push_event(socket, "show_feedback", %{question_id: id, is_correct: is_correct})}
  end
end
