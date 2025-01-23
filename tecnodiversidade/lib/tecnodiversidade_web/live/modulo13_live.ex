defmodule TecnodiversidadeWeb.Modulo13Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 13

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
          As acepções de tecnologia de Álvaro Vieira Pinto
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Em uma perspectiva da teoria crítica, o conceito de tecnologia vai além da ideia de artefatos ou ferramentas e considera que tanto o seu desenvolvimento quanto o seu impacto são intrinsecamente sociais.
      </p>
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4 items-center mt-4">
        <!-- Imagem à esquerda -->
        <div>
          <img
            src="/images/tela_3_acepcoes.png"
            alt="Imagem relacionada às acepções da tecnologia"
            class="w-full rounded-md"
          />
        </div>
        <!-- Texto à direita -->
        <div>
          <p class="mt-4">
            Para Álvaro Vieira Pinto (2005), a tecnologia não se configura apenas como artefatos ou ferramentas, mas um modo de capacidade imaginativa que o homem utiliza para transformar a realidade. Para ele, a tecnologia é resultado do trabalho humano para produzir a sua existência.
          </p>
          <p>
            Em sua obra “O Conceito de Tecnologia” publicada em 2005, Vieira Pinto identifica quatro significados centrais para a tecnologia:
          </p>
        </div>
      </div>
      <p class="highlight mt-4">
        1. Tecnologia como Epistemologia da Técnica
      </p>
      <p class="mt-4">
        Esta acepção apresenta a tecnologia como epistemologia da técnica, ou seja, como uma ciência que tem a técnica como objeto de estudo. A técnica é compreendida como um ato produtivo eminentemente humano, que gera considerações teóricas e exige um campo específico de conhecimento para reflexão crítica.
      </p>
      <div class="mt-4 border border-black p-4 rounded-md bg-gray-50">
        <p class="">
          💡 <strong>Conceito-Chave:</strong>
          Quando falamos em "epistemologia da técnica", estamos nos referindo ao estudo científico e filosófico de como produzimos e utilizamos as técnicas em nossa sociedade.
        </p>
      </div>
      <p class="highlight mt-4">
        2. Tecnologia como Técnica
      </p>
      <p class="mt-4">
        Nesta acepção, a tecnologia e a técnica são vistas como sinônimos. Esta é a acepção mais comum e usual, presente na linguagem do dia a dia. Apesar de parecer ingênua, a equivalência entre tecnologia e técnica pode ser prejudicial para a análise de problemas sociológicos e filosóficos, mascarando interesses econômicos e políticos por trás da imprecisão conceitual.
      </p>
      <p class="highlight mt-4">
        3. Tecnologia como Conjunto de Técnicas
      </p>
      <p class="mt-4">
        Representa todas as técnicas que uma sociedade possui em determinado momento histórico. Vieira Pinto identifica duas interpretações problemáticas desse conceito:
      </p>
      <ul class="mt-6 pl-6 list-disc">
        <li>
          A primeira assume a tecnologia dos países desenvolvidos como único modelo, levando regiões menos desenvolvidas a imitarem esse modelo sem considerar suas próprias realidades e condições. O autor critica a transferência de tecnologia nesse contexto, pois prioriza os lucros em detrimento das necessidades da sociedade que as recebe, colocando a técnica acima do ser humano.
        </li>
        <li>
          A segunda interpretação, embora reconheça a diversidade de projetos tecnológicos, busca um desenvolvimento uniforme entre sociedades, ignorando as diferentes concepções e projetos existentes na realidade.
        </li>
      </ul>
      <p class="highlight mt-4">
        4. Tecnologia como Ideologização
      </p>
      <p class="mt-4">
        Esta acepção aborda a elevação da técnica ao status de ideologia social, aproximando-se do conceito de tecnocentrismo. Essa ideologização se manifesta na tentativa de transformar a técnica em mitologia, capaz de explicar a realidade e conduzir a uma vida feliz para todos. O autor destaca o embasbacamento diante da tecnologia, caracterizado pela crença em seu poder demiúrgico e a submissão do ser humano a ela. A tecnologia ideologizada serve a interesses políticos e econômicos, sendo utilizada para "enfeitiçar" a população e perpetuar a dominação. Vieira Pinto alerta para as diversas formas de ideologização da tecnologia, que visam a:
      </p>
      <ul class="mt-6 pl-6 list-disc">
        <li>
          Mostrar a tecnologia dos países centrais como superior e única.
        </li>
        <li>
          Apresentar essa tecnologia como benéfica para toda a humanidade.
        </li>
        <li>
          Desqualificar as críticas ao desenvolvimento tecnológico como retrógradas.
        </li>
        <li>
          Esconder os interesses por trás da tecnização da sociedade.
        </li>
        <li>
          Manter a exclusão social e a espoliação econômica.
        </li>
      </ul>
      <p class="mt-4">
        O autor critica a substantivação da técnica, processo que a transforma em uma entidade autônoma e a separa da ação humana. Esse processo, presente na ideologização da tecnologia, ofusca o papel crucial do ser humano na criação e evolução das inovações tecnológicas, bem como os interesses dos grupos sociais que participam desse processo.
      </p>
      <p class="mt-4">
        Por fim, Vieira Pinto destaca a exaltação do presente como característica das ideologizações da tecnologia. Essa perspectiva, recorrente ao longo da história, tende a absolutizar o presente, projetando-o como um modelo inquestionável para o futuro, ignorando as transformações sociais e políticas e perpetuando a ordem social vigente. A valorização da tecnologia atual serve para fortalecer os interesses dos grupos dominantes e manter a exclusão social.
      </p>
      <p class="mt-4">
        A análise de Vieira Pinto sobre as acepções da tecnologia oferece uma crítica profunda da relação entre técnica, sociedade e poder. O autor destaca os perigos da ideologização da técnica, que transforma a tecnologia em um instrumento de dominação e alienação, e nos orienta para uma compreensão crítica da tecnologia como atividade humana inserida na cultura.
      </p>
      <hr class="my-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4">
        VIEIRA PINTO, Álvaro. A tecnologia. IN: VIEIRA PINTO, Álvaro. <b>O conceito de tecnologia.</b>
        v. 1. Rio de Janeiro: Contraponto, 2005. p. 219- 355.
      </p>
      <hr class="my-8" />
      <p class="mt-4">
        Para enriquecer sua compreensão, convidamos você a escutar um podcast, gerado com o auxílio do NotebookLM, uma inteligência artificial projetada para criar conteúdos educativos. Este podcast baseado no texto "Tecnologia, educação e tecnocentrismo: as contribuições de Álvaro Vieira Pinto", de Gildemarks Costa e Silva as ideias centrais do texto, destacando as críticas ao tecnocentrismo e o papel transformador da tecnologia na educação, segundo a perspectiva de Álvaro Vieira Pinto.
      </p>

      <section class="bg-gray-100 p-8 max-w-lg mx-auto rounded-lg shadow-lg mt-8">
        <h2 class="text-xl font-bold text-gray-800 mb-4">Tecnologia, educação e tecnocentrismo</h2>
        <audio controls class="w-full">
          <source src="/audios/podcast_vieria_pinto.mp3" type="audio/mpeg" />
          Seu navegador não suporta o elemento de áudio.
        </audio>
      </section>
    </section>
    <section class="bg-gray-50 body-text py-8 px-12 max-w-7xl mx-auto">
      <!-- Para Refletir -->
      <div class="mb-8">
        <h2 class="title-main text-gray-800 mb-4">🗨️ Para refletir</h2>
        <p class="text-gray-700">
          Pense em seu cotidiano: <br />
          Você já se percebeu tratando a tecnologia como algo "mágico" que resolverá todos os problemas?
        </p>
      </div>
      <hr class="mb-8" />
      <!-- Resumo -->
      <div class="mb-8">
        <h2 class="title-main font-bold text-gray-800 mb-4">📑 Resumo</h2>
        <ul class="mt-6 pl-6 list-disc">
          <li class="text-gray-700 mb-4">
            Vieira Pinto desenvolve uma análise crítica da tecnologia, identificando quatro significados centrais: tecnologia como epistemologia da técnica, como técnica em si, como conjunto de técnicas de uma sociedade, e como ideologização.
          </li>
          <li class="text-gray-700 mb-4">
            Vieira Pinto defende que a tecnologia é fundamentalmente uma criação humana, resultado do trabalho e da capacidade imaginativa do homem para transformar a realidade.
          </li>
          <li class="text-gray-700">
            O autor destaca como a tecnologia pode ser transformada em uma ideologia que serve a interesses políticos e econômicos.
          </li>
        </ul>
      </div>
      <hr class="mb-8" />
      <!-- Glossário -->
      <div>
        <h2 class="title-main font-bold text-gray-800 mb-4">🗂️ Glossário</h2>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Embasbacamento:</strong>
            Para Vieira Pinto, o "embasbacamento" é um conceito crítico que se refere a um estado de admiração acrítica e passiva diante da tecnologia. Trata-se de uma atitude intelectual caracterizada pela contemplação ingênua e pela idolatria dos artefatos tecnológicos.
          </p>
        </div>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Substantivação da Técnica:</strong>
            Tratar o adjetivo "técnica" como um substantivo abstrato, transformando-o em uma entidade com existência independente, separada da ação humana.
          </p>
        </div>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Tecnocentrismo:</strong>
            A crença de que a tecnologia é a força motriz da sociedade e a solução para todos os problemas, ignorando as dimensões sociais, culturais e éticas.
          </p>
        </div>
        <hr class="mb-8" />
        <div class="mb-8">
          <h2 class="title-main text-gray-800 mb-4">📚 Leitura Complementar</h2>
          <p class="text-gray-700">
            Para aprofundar seus conhecimentos, sugerimos a leitura do artigo “Tecnologia, educação e tecnocentrismo: as contribuições de Álvaro Vieira Pinto” de Gildemarks Costa e Silva disponível em:
            <a
              href="https://www.scielo.br/j/rbeped/a/8yzpyFXhFS3bHdpCRsgGRtH/abstract/?lang=pt"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              https://www.scielo.br/j/rbeped/a/8yzpyFXhFS3bHdpCRsgGRtH/abstract/?lang=pt
            </a>
          </p>
        </div>
      </div>
      <hr class="mb-8" />
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/1/conceito-tecnologia-feenberg")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/1/pergunta")}
  end
end
