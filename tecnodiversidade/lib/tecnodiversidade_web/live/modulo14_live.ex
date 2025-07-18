defmodule TecnodiversidadeWeb.Modulo14Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 14

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
          A tecnologia pelo construtivismo crítico de Andrew Feenberg
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Esta etapa do curso online pretende explorar a perspectiva crítica da tecnologia desenvolvida pelo filósofo contemporâneo Andrew Feenberg. O ponto central de sua teoria está na crítica à neutralidade da tecnologia, argumentando que ela é intrinsecamente moldada por valores sociais e políticos. Feenberg (2013a) apresenta quatro perspectivas que direcionam as discussões sobre tecnologia:
      </p>
      <p class="highlight mt-4">
        Instrumentalismo
      </p>
      <p class="mt-4">
        Nesta abordagem, a tecnologia é vista como uma ferramenta neutra e meramente instrumental, um meio para atingir fins. Sob essa ótica, a tecnologia em si não carrega valores ou determinações, sendo apenas um recurso a serviço de objetivos humanos.
      </p>
      <p class="highlight mt-4">
        Determinismo Tecnológico
      </p>
      <p class="mt-4">
        Em contraste, o determinismo tecnológico entende a tecnologia como uma força autônoma e independente, capaz de moldar a sociedade de maneira determinante. Nessa perspectiva, o desenvolvimento tecnológico segue sua própria lógica, impondo transformações sociais.
      </p>
      <p class="highlight mt-4">
        Substantivismo
      </p>
      <p class="mt-4">
        O substantivismo compreende a tecnologia como intrinsecamente carregada de valores e significados sociais específicos. Nessa visão, os artefatos tecnológicos incorporam escolhas, interesses e perspectivas de determinados grupos, modelando assim modos de vida e organizações sociais.
      </p>
      <p class="mt-4">
        Feenberg critica as visões tradicionais expostas acima por oferecerem um quadro teórico limitado para a compreensão da tecnologia. Ele propõe então a:
      </p>
      <p class="highlight mt-4">
        Teoria Crítica da Tecnologia
      </p>
      <p class="mt-4">
        Também conhecida como construtivismo crítico, essa abordagem reconhece a tecnologia como um fenômeno socialmente construído e suscetível ao controle humano, porém invariavelmente marcado por dimensões éticas e políticas. Aqui, a tecnologia não se reduz a uma mera ferramenta neutra, mas reflete escolhas e valores que afetam profundamente a experiência social.
      </p>
      <p class="mt-4">
        O construtivismo crítico tem como base os fundamentos providos pelos estudos de caso da Ciência, Tecnologia e Sociedade (CTS), o conceito de subdeterminação e a unidade ou ordem sociotécnica. Vamos explorar mais profundamente o Construtivismo Crítico no vídeo a seguir.
      </p>
      <div class="flex justify-center my-8">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/construtivismo_critico.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="mt-4 mb-8">
        Como acompanhamos na vídeo-aula, Feenberg (2013b) afirma que as tecnologias são carregadas de valores e que seu desenvolvimento é determinado tanto por questões técnicas quanto por critérios sociais. Assim, os objetos, além de técnicos, são também sociais. Vimos também como Feenberg (2013b) destaca o potencial de liberdade e controle democrático no desenvolvimento e design tecnológico. Nessa perspectiva, a sociedade não se transforma apenas por meio das instituições políticas, mas também por meio das infraestruturas tecnológicas. Com a articulação de grupos sociais, podem ocorrer reconfigurações dessas infraestruturas tecnológicas e a construção de outros possíveis mundos. Nesse sentido, o autor defende a democratização da tecnologia, onde o processo de desenvolvimento das tecnologias deve ser democratizado, proporcionando conhecimento técnico e identificando as necessidades da sociedade, revertendo a lógica atual que privilegia e mantém a hegemonia tecnológica.
      </p>
      <hr class="mb-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4">
        FEENBERG, Andrew. O que é a filosofia da tecnologia? In: NEDER, Ricardo Toledo.
        <b>A teoria crítica de Andrew Feenberg:</b>
        racionalização democrática, poder e tecnologia. 2ª, Brasília: Observatório do Movimento pela Tecnologia Social na América Latina/CDS/UnB/Capes, 2013a. p. 49-66. Disponível em: <a
          href="https://www.sfu.ca/~andrewf/Coletanea.pdf"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://www.sfu.ca/~andrewf/Coletanea.pdf</a>. Acesso em: 10 dez. 2024.
      </p>
      <p class="mt-4 mb-8 ">
        FEENBERG, Andrew. Racionalização subversiva: tecnologia, poder e democracia. In: NEDER, Ricardo Toledo.
        <b>A teoria crítica de Andrew Feenberg:</b>
        racionalização democrática, poder e tecnologia. 2ª, Brasília: Observatório do Movimento pela Tecnologia Social na América Latina/CDS/UnB/Capes, 2013b. p. 67-98. Disponível em: <a
          href="https://www.sfu.ca/~andrewf/Coletanea.pdf"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://www.sfu.ca/~andrewf/Coletanea.pdf</a>. Acesso em: 10 dez. 2024.
      </p>
      <hr class="mb-8" />
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto bg-gray-50">
      <!-- Para Refletir -->
      <div class="mb-8">
        <h2 class="title-main text-gray-800 mb-4">🗨️ Para refletir</h2>
        <p class="text-gray-700">
          De que maneira os diferentes grupos sociais podem exercer uma participação mais ativa no processo de desenvolvimento tecnológico, superando a atual lógica hegemônica e promovendo uma democratização efetiva da tecnologia?
        </p>
      </div>
      <hr class="mb-8" />
      <!-- Resumo -->
      <div class="mb-8">
        <h2 class="title-main font-bold text-gray-800 mb-4">📑 Resumo</h2>
        <ul class="mt-6 pl-6 list-disc">
          <li>
            Feenberg critica a ideia de neutralidade da tecnologia e aponta a tecnologia como fenômeno socialmente construído.
          </li>
          <li>
            Abordagens Teóricas Tradicionais de Tecnologia: Instrumentalismo: tecnologia como ferramenta neutra; Determinismo Tecnológico: tecnologia como força autônoma e Substantivismo: tecnologia carregada de valores sociais específicos
          </li>
          <li>
            O construtivismo crítico reconhece a construção social da tecnologia, enfatiza o controle humano e as dimensões éticas e valoriza a participação social no desenvolvimento tecnológico.
          </li>
        </ul>
      </div>
      <hr class="mb-8" />
      <!-- Glossário -->
      <div>
        <h2 class="title-main font-bold text-gray-800 mb-4">🗂️ Glossário</h2>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Co-construção:</strong>
            O processo pelo qual a tecnologia e a sociedade se moldam mutuamente ao longo do tempo.
          </p>
        </div>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Códigos Técnicos:</strong>
            Normas e padrões que orientam o design, desenvolvimento e uso da tecnologia, incorporando valores sociais e políticos.
          </p>
        </div>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Intrumentalização Primária:</strong>
            Foco nos aspectos técnicos de design e eficiência, visando o controle sobre a natureza.
          </p>
        </div>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Instrumentalização Secundária:</strong>
            Consideração das implicações sociais da tecnologia e seu impacto nos indivíduos e na sociedade.
          </p>
        </div>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Subdeterminação:</strong>
            A existência de múltiplas soluções tecnológicas possíveis para um determinado problema, indicando que a escolha da solução implementada é influenciada por fatores sociais.
          </p>
        </div>
        <hr class="mb-8" />
        <div class="mb-8">
          <h2 class="title-main text-gray-800 mb-4">📚 Materiais Complementares</h2>
          <p class="text-gray-700">
            Para aprofundar seus conhecimentos, sugerimos o acesso à página de obras de Andrew Feenberg em
            <a
              href="https://www.sfu.ca/~andrewf/translations.html"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              https://www.sfu.ca/~andrewf/translations.html
            </a>
            e ao artigo "Criticando e avançando o Construtivismo Crítico a partir do Sul Global" do Professor Cristiano Cordeiro Cruz, disponível em
            <a
              href="https://www.scielo.br/j/trans/a/5kbzpzhfGhVtKTq53P69Xmf/"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              https://www.scielo.br/j/trans/a/5kbzpzhfGhVtKTq53P69Xmf/
            </a>
          </p>
          <div class="grid grid-cols-1 gap-8 mt-6">
            <p class="text-gray-700">
              Também recomendamos o seguinte podcast:
            </p>
            <a
              href="https://www.youtube.com/c/PodcastTecnopol%C3%ADtica/featured"
              target="_blank"
              rel="noopener noreferrer"
              class="flex flex-col sm:flex-row items-center sm:items-start gap-6 bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300"
            >
              <img
                src="/images/podcasttecnopolitica.jpg"
                alt="Logotipo do Podcast Tecnopolítica"
                class="w-full sm:w-48 h-32 object-cover rounded-lg sm:rounded-l-lg sm:rounded-r-none"
              />
              <div class="flex-1 text-center sm:text-left p-4">
                <h3 class="text-lg font-semibold text-gray-800">Podcast Tecnopolítica</h3>
                <p class="mt-2 text-gray-600">
                  Debate como a tecnologia tem modificado nossas relações sociais, econômicas e políticas.
                </p>
              </div>
            </a>
          </div>
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/1/quiz")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/1/conceito-tecnologia")}
  end
end
