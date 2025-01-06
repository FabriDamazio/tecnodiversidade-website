defmodule TecnodiversidadeWeb.Modulo24Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
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
        Esta etapa do curso online pretende explorar a perspectiva crítica da tecnologia desenvolvida pelo filósofo contemporâneo Andrew Feenberg. O ponto central de sua teoria está na crítica à neutralidade da tecnologia, argumentando que ela é intrinsecamente moldada por valores sociais e políticos. Ele apresenta quatro perspectivas que direcionam as discussões sobre tecnologia:
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
      <p class="mt-4">
        Como acompanhamos na vídeo-aula, Feenberg afirma que as tecnologias são carregadas de valores e que seu desenvolvimento é determinado tanto por questões técnicas quanto por critérios sociais. Assim, os objetos, além de técnicos, são também sociais. Vimos também como Feenberg destaca o potencial de liberdade e controle democrático no desenvolvimento e design tecnológico. Nessa perspectiva, a sociedade não se transforma apenas por meio das instituições políticas, mas também por meio das infraestruturas tecnológicas. Com a articulação de grupos sociais, podem ocorrer reconfigurações dessas infraestruturas tecnológicas e a construção de outros possíveis mundos. Nesse sentido, o autor defende a democratização da tecnologia, onde o processo de desenvolvimento das tecnologias deve ser democratizado, proporcionando conhecimento técnico e identificando as necessidades da sociedade, revertendo a lógica atual que privilegia e mantém a hegemonia tecnológica.
      </p>
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
          <h2 class="title-main text-gray-800 mb-4">📚 Leitura Complementar</h2>
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
        </div>
      </div>
      <hr class="mb-8" />
      <section class="body-text">
        <div class="container mx-auto px-4">
          <h2 class="title-main mb-8">Referências</h2>
          <p>
            CRUZ, Cristiano Cordeiro.<strong> Andrew Feenberg:</strong> a relação entre tecnologia, política e sociedade. YouTube, 4 dez. 2020. <a
              href="https://www.youtube.com/watch?v=mIYPQl2CAeo&t=5946s"
              target="_blank"
              class="text-blue-500 hover:underline"
            >Disponível em: https://www.youtube.com/watch?v=mIYPQl2CAeo&t=5946s</a>. Acesso em: 14 out. 2024.
          </p>
          <p>
            FEENBERG, Andrew.<strong> Transforming Technology:</strong> A Critical Theory Revisited. Oxford University Press, 2002.
          </p>
          <p>
            FEENBERG, Andrew. Racionalização subversiva: tecnologia, poder e democracia. In: R. T. Neder (Org.),
            <strong>Andrew Feenberg:</strong>
            racionalização democrática, poder e tecnologia. Brasília, DF: Observatório do Movimento pela Tecnologia Social na América Latina/CDS/UnB/Capes. 2010.
          </p>
          <p>
            FEENBERG, Andrew. O que é a filosofia da tecnologia?. In: R. T. Neder (Org.),
            <strong> Andrew Feenberg:</strong>
            racionalização democrática, poder e tecnologia. Brasília, DF: Observatório do Movimento pela Tecnologia Social na América Latina/CDS/UnB/Capes. 2010.
          </p>
          <p>
            FEENBERG, Andrew. <strong>Conctrutivismo crítico:</strong>
            uma filosofia da tecnologia. Trad. Luiz Abrahão e Cristiano Cruz. São Paulo: Scientiae Studia, 2022.
          </p>
        </div>
      </section>

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
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/pergunta")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/discussoes-tecnodiversidade")}
  end
end
