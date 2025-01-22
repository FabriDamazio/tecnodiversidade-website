defmodule TecnodiversidadeWeb.Modulo33Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 33

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
          A tecnodiversidade na EPT
        </h1>
      </div>
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        A Educação Profissional e Tecnológica (EPT) no Brasil tem se consolidado historicamente como um campo de formação que articula trabalho, ciência, tecnologia e cultura. Ao analisar esta modalidade educacional sob a perspectiva da tecnodiversidade, podem surgir importantes reflexões sobre como as diferentes cosmotécnicas e relações tecnológicas podem contribuir para a proposta da formação integral dos estudantes e para a valorização diferentes formas de saber técnico e tecnológico.
      </p>
      <p class="mt-4">
        Assista à vídeo-aula abaixo para aprofundar seu entendimento sobre as contribuições da tecnodiversidade para a EPT.
      </p>
      <div class="flex justify-center my-8">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/tecnodiversidade_educacao.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="highlight mt-4">
        Os Institutos Federais: perspectivas e desafios para a Tecnodiversidade
      </p>
      <p class="mt-4">
        Conforme estabelecido em sua lei de criação (11.892/2008), os Institutos Federais têm por finalidades e características:
      </p>
      <p class="mt-4">
        I - ofertar educação profissional e tecnológica, em todos os seus níveis e modalidades, formando e qualificando cidadãos com vistas na atuação profissional nos diversos setores da economia, com ênfase no desenvolvimento socioeconômico local, regional e nacional;
      </p>
      <p class="mt-4">
        II - desenvolver a educação profissional e tecnológica como processo educativo e investigativo de geração e adaptação de soluções técnicas e tecnológicas às demandas sociais e peculiaridades regionais;
      </p>
      <p class="mt-4">
        III - promover a integração e a verticalização da educação básica à educação profissional e educação superior, otimizando a infra-estrutura física, os quadros de pessoal e os recursos de gestão;
      </p>
      <p class="mt-4">
        IV - orientar sua oferta formativa em benefício da consolidação e fortalecimento dos arranjos produtivos, sociais e culturais locais, identificados com base no mapeamento das potencialidades de desenvolvimento socioeconômico e cultural no âmbito de atuação do Instituto Federal;
      </p>
      <p class="mt-4">
        V - constituir-se em centro de excelência na oferta do ensino de ciências, em geral, e de ciências aplicadas, em particular, estimulando o desenvolvimento de espírito crítico, voltado à investigação empírica;
      </p>
      <p class="mt-4">
        VI - qualificar-se como centro de referência no apoio à oferta do ensino de ciências nas instituições públicas de ensino, oferecendo capacitação técnica e atualização pedagógica aos docentes das redes públicas de ensino;
      </p>
      <p class="mt-4">
        VII - desenvolver programas de extensão e de divulgação científica e tecnológica;
      </p>
      <p class="mt-4">
        VIII - realizar e estimular a pesquisa aplicada, a produção cultural, o empreendedorismo, o cooperativismo e o desenvolvimento científico e tecnológico;
      </p>
      <p class="mt-4">
        IX - promover a produção, o desenvolvimento e a transferência de tecnologias sociais, notadamente as voltadas à preservação do meio ambiente.
      </p>
      <p class="mt-4">
        Ao relacionarmos essas características e finalidades com o conceito de tecnodiversidade, encontramos pontos de convergência e reflexão sobre o papel dessas instituições na formação integral e no desenvolvimento tecnológico brasileiro. A seguir, estão os principais pontos de convergência destacados por este curso:
      </p>
      <p class="mt-4">
        <b>
          Mapeamento das potencialidades e fortalecimento dos arranjos produtivos, sociais e culturais locais:
        </b>
        Na adaptação de soluções técnicas e tecnológicas às demandas e peculiaridades regionais, compreende-se que cada região pode necessitar de soluções tecnológicas distintas, baseadas em diferentes conhecimentos e práticas locais. Além disso, destaca-se que a formação deve proporcionar meios para que os estudantes sejam capazes de se adaptar e inovar dentro de suas realidades regionais, utilizando a diversidade de tecnologias disponíveis. Isso se alinha à ideia de tecnodiversidade de Hui, ao reconhecer que não existe um modelo universal capaz de atender às questões locais e ao valorizar a diversidade de saberes disponíveis para a construção de tecnologias.
      </p>
      <p class="mt-4">
        <b>
          Promoção da produção, o desenvolvimento e a transferência de tecnologias sociais:
        </b>
        A tecnologia social de acordo com o Caderno de Debate - Tecnologia Social, é "um conjunto de técnicas, metodologias transformadoras, desenvolvidas e/ou aplicadas na interação com a população e apropriadas por ela, que representam soluções para inclusão social e melhoria das condições de vida.”
      </p>
      <p class="mt-4">
        A tecnologia social e a tecnodiversidade são conceitos que se inter-relacionam, mas possuem focos diferentes na educação profissional e tecnológica, conforme indicado no quadro abaixo:
      </p>
      <table class="min-w-full bg-white border border-gray-300 my-8">
        <thead>
          <tr>
            <th class="py-3 px-4 border-b text-left bg-gray-100">Aspectos</th>
            <th class="py-3 px-4 border-b text-left bg-gray-100">Tecnologia Social</th>
            <th class="py-3 px-4 border-b text-left bg-gray-100">Tecnodiversidade</th>
          </tr>
        </thead>
        <tbody>
          <!-- Linha 1: Foco Principal -->
          <tr>
            <td class="py-2 px-4 border-b font-medium">Foco Principal</td>
            <td class="py-2 px-4 border-b">Solução de problemas sociais e ambientais.</td>
            <td class="py-2 px-4 border-b">
              Busca a diversidade cultural e tecnológica e crítica ao modelo universal de desenvolvimento tecnológico.
            </td>
          </tr>
          <!-- Linha 2: Abordagem -->
          <tr>
            <td class="py-2 px-4 border-b font-medium">Abordagem</td>
            <td class="py-2 px-4 border-b">
              Soluções técnicas e tecnológicas para a resolução de problemas locais com uma construção participativa.
            </td>
            <td class="py-2 px-4 border-b">
              Questiona a homogeneização tecnológica e o controle exercido por um modelo único de tecnologia, buscando alternativas que respeitem as particularidades locais e culturais.
            </td>
          </tr>
          <!-- Linha 3: Papel na EPT -->
          <tr>
            <td class="py-2 px-4 border-b font-medium">Papel na EPT</td>
            <td class="py-2 px-4 border-b">
              Utiliza processos educativos para a disseminação e apropriação de tecnologias sociais, valorizando os saberes locais e a participação da comunidade.
            </td>
            <td class="py-2 px-4 border-b">
              Precisa de uma educação que questione a racionalidade instrumental da tecnologia e valorize a diversidade de conhecimentos, a criatividade, o pensamento crítico e a capacidade de inovação.
            </td>
          </tr>
          <!-- Linha 4: Dimensão Política -->
          <tr>
            <td class="py-2 px-4 border-b font-medium">Dimensão Política</td>
            <td class="py-2 px-4 border-b">Transformação social e participação popular.</td>
            <td class="py-2 px-4 border-b">Reconhecimento cultural e descolonização do saber.</td>
          </tr>
        </tbody>
      </table>
      <p class="mt-4">
        A tecnologia social e a tecnodiversidade podem ser entendidos como conceitos complementares na educação profissional e tecnológica. A tecnodiversidade oferece a base para entender que existem múltiplas formas de tecnologia, enquanto a tecnologia social oferece uma maneira de usar esse entendimento para criar soluções que atendam às necessidades específicas de diferentes grupos sociais.
      </p>
      <p class="mt-4">
        Apesar dos pontos de convergência identificados, existem importantes desafios a serem considerados:
      </p>
      <p class="mt-4">
        <b>
          Integração entre teoria e prática:
        </b>
        a tecnodiversidade exige uma abordagem que integre os conhecimentos teóricos com a prática, permitindo aos alunos aplicar seus conhecimentos em contextos reais e valorizar diferentes formas de conhecimento, incluindo as práticas locais.
      </p>
      <p class="mt-4">
        <b>
          Formação Docente:
        </b>
        a preparação dos professores para trabalhar com diferentes cosmotécnicas e diferentes formas de conhecimento.
      </p>
      <p class="mt-4">
        <b>
          Integração com as comunidades locais:
        </b>
        para que as discussões sobre tecnodiversidade avancem, se faz necessário uma forte interação entre as comunidades locais, setores produtivos e os espaços de produção do conhecimento.
      </p>
      <hr class="my-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4">
        DI DEUS, Eduardo. <b>Tecnodiversidade e educação: </b>
        reflexões a partir de aprendizagens técnicas no meio rural. Áltera Revista de Antropologia, João Pessoa, Número 16, 2023, p. 1-28. Disponível em: <a
          href="https://periodicos.ufpb.br/index.php/altera/article/view/67000"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://periodicos.ufpb.br/index.php/altera/article/view/67000</a>.
      </p>
      <hr class="my-8" />
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto bg-gray-50">
      <!-- Resumo -->
      <div class="mb-8">
        <h2 class="title-main font-bold text-gray-800 mb-4">📑 Resumo</h2>
        <ul class="mt-6 pl-6 list-disc">
          <li>
            A Educação Profissional e Tecnológica (EPT) no Brasil é uma modalidade de ensino que integra trabalho, ciência, tecnologia e cultura.
          </li>
          <li>
            Pontos de convergência entre as finalidades da EPT e a tecnodiversidade: mapeamento e fortalecimento das potencialidades locais, reconhecendo que cada região pode necessitar de soluções tecnológicas distintas, valorização da diversidade de saberes na construção de tecnologias e foco na adaptação e inovação dentro das realidades regionais.
          </li>
        </ul>
      </div>
      <hr class="mb-8" />
      <!-- Glossário -->
      <div>
        <h2 class="title-main font-bold text-gray-800 mb-4">🗂️ Glossário</h2>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Educação Profissional:</strong>
            é uma modalidade de ensino que visa qualificar e preparar os indivíduos para o mundo do trabalho.
          </p>
        </div>
        <div class="mb-4">
          <p class="text-gray-700">
            <strong>Educação Tecnológica:</strong>
            uma abordagem que visa a formação de indivíduos capazes de compreender e interagir criticamente com a tecnologia. Ela vai além do simples treinamento técnico, buscando desenvolver uma compreensão ampla da tecnologia, seus fundamentos científicos, culturais, seus impactos sociais e suas aplicações práticas.
          </p>
        </div>
        <hr class="mb-8" />
        <div class="mb-8">
          <h2 class="title-main text-gray-800 mb-4">📚 Leitura Complementar</h2>
          <p class="text-gray-700">
            Para aprofundar seus conhecimentos sobre tecnodiversidade e educação, sugerimos a leitura do artigo “Pensar as Tecnologias a partir de Gilbert Simondon e Yuk Hui” de Andréia Machado Oliveira, disponível em:
            <a
              href="https://seer.ufrgs.br/index.php/educacaoerealidade/article/view/120769"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              https://seer.ufrgs.br/index.php/educacaoerealidade/article/view/120769
            </a>
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/3/quiz")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/3/questao-tecnologia-ept")}
  end
end
