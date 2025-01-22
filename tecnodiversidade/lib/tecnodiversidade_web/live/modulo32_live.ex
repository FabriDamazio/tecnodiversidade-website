defmodule TecnodiversidadeWeb.Modulo32Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 32

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
          A questão da tecnologia na EPT
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-8">
        Conheça a linha do tempo da Educação Profissional e Tecnológica (EPT) no Brasil.
      </p>
      <div>
        <img
          src="/images/modulo3_linha_do_tempo_ept.png"
          alt="Mapa mental mostrando os epistemes e saberes e práticas e tecnologias da tecnodiversidade no Brasil."
          class="w-full rounded-md"
        />
      </div>
      <p class="mt-4">
        A Educação Profissional passou a ser denominada oficialmente como "Educação Profissional e Tecnológica" no Brasil com a Lei nº 11.741 de 2008, que alterou a Lei de Diretrizes e Bases da Educação Nacional (Lei nº 9.394/96). Esta mudança representou um avanço em relação à visão tradicional da educação profissional como mera preparação de mão de obra para o mundo do trabalho, pois a educação tecnológica entende que a capacitação técnica não deve ser separada do desenvolvimento pessoal, cultural e social.
      </p>
      <p class="mt-4">
        A Educação Profissional e Tecnológica configura-se como uma modalidade de ensino voltada para as dimensões do trabalho, da ciência e da tecnologia. A modalidade apresenta os seguintes níveis de formação:
      </p>
      <p class="mt-4">
        <li class="ml-10">Formação Inicial e Continuada (FIC) ou Qualificação Profissional.</li>
        <li class="ml-10">Educação Profissional Técnica de Nível Médio.</li>
        <li class="ml-10">Educação Profissional Tecnológica de graduação e pós-graduação.</li>
      </p>
      <p class="mt-4">
        Atualmente, os cursos da EPT se dividem em 13 eixos tecnológicos, sendo eles: Ambiente, Saúde e Segurança; Controle e Processos Industriais; Gestão e Negócios; Hospitalidade e Lazer; Informação e Comunicação; Infraestrutura; Produção Alimentícia; Produção Cultural e Design; Produção Industrial; Recursos Naturais; Apoio Escolar; Militar; Segurança.
      </p>
      <p class="mt-4">
        Conforme Lucília Machado, A estruturação da EPT em eixos tecnológicos proporciona uma identidade tecnológica a essa modalidade de ensino; auxilia na determinação da densidade tecnológica exigida pelos cursos; possibilita o resgate do histórico e da lógica do desenvolvimento dos conhecimentos tecnológicos; orienta as políticas de oferta nacional da Educação Profissional Técnica; permite refletir sobre convergências e diversidades dessa educação sob a perspectiva tecnológica; oferece suporte mais consistente à definição curricular e às demandas infraestruturais; facilita a organização de itinerários formativos; aprimora a orientação para o trabalho interdisciplinar; contribui para a racionalização dos recursos humanos e de infraestrutura; e favorece a análise do aproveitamento de estudos realizados previamente.
      </p>
      <p class="highlight mt-4">
        Os Institutos Federais
      </p>
      <p class="mt-4">
        Em 2008, a criação dos Institutos Federais de Educação, Ciência e Tecnologia (IFs) representou um avanço na EPT, com a proposta de integrar a capacitação profissional à formação integral. Essa proposta visava superar a dualidade histórica na educação brasileira através da articulação entre educação profissional e propedêutica, proporcionando uma formação técnica, científica, cultural e social aos estudantes.
      </p>
      <p class="mt-4">
        De acordo com o livreto da Secretaria de Educação Profissional e Tecnológica,
        <b>Concepções e Diretrizes</b>
        (2008), “O foco dos Institutos Federais será a justiça social, a equidade, a competitividade econômica e a geração de novas tecnologias. Responderão, de forma ágil e eficaz, às demandas crescentes por formação profissional, por difusão de conhecimentos científicos e tecnológicos e de suporte aos arranjos produtivos locais.”
      </p>
      <p class="mt-4">
        Os Institutos Federais têm um papel fundamental como produtores de ciência e tecnologia e, conforme estabelecido em sua lei de criação (11.892/2008), devem promover pesquisas aplicadas que busquem o desenvolvimento de soluções técnicas e tecnológicas, estendendo seus benefícios à comunidade. No contexto dos cursos, além de proporcionar acesso aos bens científicos, tecnológicos e culturais, é essencial compreender a realidade local e desenvolver, em conjunto com os estudantes, soluções que possam aprimorar as condições de vida e trabalho da comunidade. Ainda, na busca pela efetiva integração entre educação básica, profissional e superior, torna-se fundamental apresentar os diferentes níveis de conhecimento de cada área, permitindo que os estudantes compreendam seus fundamentos, metodologias, técnicas e tecnologias. Essa abordagem integrada possibilita uma visão integral do campo de estudo e desperta nos alunos a consciência de seu potencial para contribuir com o desenvolvimento científico e tecnológico.
      </p>
      <p class="highlight mt-4">
        A Tecnologia na Educação Profissional e Tecnológica
      </p>
      <p class="mt-4">
        A tecnologia tem uma papel crucial na EPT, indo além do mero uso de ferramentas e equipamentos. Segundo a resolução nº 6 de setembro de 2012, a EPT deve proporcionar aos estudantes o domínio intelectual das tecnologias pertinentes ao curso, de modo a permitir o desenvolvimento profissional e a capacidade de construir novos conhecimentos, com autonomia intelectual. Isso reforça que a tecnologia deve ser ensinada de forma a capacitar o aluno para além do uso imediato de ferramentas, mas também para a inovação, adaptação a novos cenários e para a sua atuação enquanto cidadão.
      </p>
      <p class="mt-4">
        Para a professora Lucília Machado, existe uma série de conhecimentos e saberes convocados pela tecnologia na Educação Profissional e Tecnológica. São eles:
      </p>
      <p class="mt-4">
        <li class="ml-10">Conhecimento sobre o meio e os ambientes técnicos;</li>
        <li class="ml-10">Conhecimento sobre os objetos técnicos;</li>
        <li class="ml-10">Conhecimento sobre os componentes e materiais utilizados;</li>
        <li class="ml-10">
          Conhecimento sobre procedimentos, métodos e regras (nas sua diferentes dimensões);
        </li>
        <li class="ml-10">Conhecimento sobre ferramentas físicas, conceituais e simbólicas;</li>
        <li class="ml-10">Conhecimentos sobre os termos utilizados;</li>
        <li class="ml-10">Conhecimentos sobre gestos humanos;</li>
        <li class="ml-10">
          Conhecimento sobre o que assegura alguém ao intervir sobre uma realidade;
        </li>
        <li class="ml-10">Conhecimento sobre a cultura no contexto da sociedade;</li>
        <li class="ml-10">Conhecimentos dos saberes tradicionais;</li>
        <li class="ml-10">Conhecimento da interação da ciência com a técnica.</li>
      </p>
      <p class="mt-4">
        Ao falar sobre tecnologia, o livreto Concepções e Diretrizes dos Institutos aponta que
      </p>
      <div class="bg-gray-100 border-l-4 border-gray-900 text-gray-900 p-6 max-w-3xl ml-auto rounded-md shadow-md my-8">
        <blockquote class="text-right italic text-lg">
          “Em seu perfil mais específico, o da formação profissional, cabe-lhe, principalmente, o dever de traduzir o conhecimento científico sob o aparato das tecnologias – aqui também entendidas como manifestação da essência do homem, porquanto contribui em configurá-lo para o meio e este para ele. Entende-se, portanto, que as tecnologias são produtos da ação humana, historicamente construídos, expressando relações sociais das quais dependem, mas que também são influenciadas por eles.”
        </blockquote>
      </div>
      <p class="mt-4"></p>
      <p class="mt-4">
        Ao analisar a proposta da Educação Profissional e Tecnológica e dos Institutos Federais sob as perspectivas teóricas de Álvaro Vieira Pinto e Andrew Feenberg, identificam-se importantes convergências que contribuem para a compreensão do papel da tecnologia na educação. A visão de tecnologia apresentada no livreto alinha-se ao pensamento de Vieira Pinto, que a define como uma expressão da capacidade humana de transformar o mundo e a si mesmo.
      </p>
      <p class="mt-4">
        Para Feenberg, a tecnologia é compreendida como uma construção social que pode ser democraticamente transformada. Essa alinha-se à proposta da EPT ao enfatizar a integração entre conhecimento científico-tecnológico e as necessidades sociais, levando em consideração os arranjos produtivos locais e promovendo justiça social e equidade.
      </p>
      <p class="mt-4">
        Feenberg também reforça a importância da democratização das decisões tecnológicas. Sua teoria dialoga diretamente com a proposta dos IFs, que visam formar profissionais não apenas aptos a operar tecnologias, mas também capazes de participar ativamente de sua criação e transformação, considerando os impactos sociais e ambientais de suas escolhas.
      </p>
      <p class="mt-4">
        A visão da tecnologia como uma construção social, a busca pela democratização do conhecimento tecnológico e o compromisso com a formação integral convergem para consolidar um modelo educacional que transcende a simples capacitação técnica. Esse modelo reconhece a tecnologia como uma dimensão essencial da experiência humana, promovendo a formação de profissionais aptos a compreender e transformar as relações sociais que moldam o desenvolvimento tecnológico.
      </p>
      <hr class="my-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4">
        BRASIL, Ministério da Educação. Secretaria de Educação Profissional e Tecnologia.
        <b>Concepções e Diretrizes:</b>
        Instituto Federal de Educação, Ciência e Tecnologia. 2008. Disponível em: <a
          href="http://portal.mec.gov.br/setec/arquivos/pdf3/ifets_livreto.pdf"
          target="_blank"
          class="text-blue-500 hover:underline"
        >http://portal.mec.gov.br/setec/arquivos/pdf3/ifets_livreto.pdf</a>.
      </p>
      <p class="mt-4 mb-8 ">
        CAMINHA NETO, Aloísio Ribeiro; CASTILHO, Fábio Francisco de Almeida.
        <b>O debate da filosofia crítica da tecnologia no ensino médio integrado profissional:</b>
        Estratégias para uma Educação humana, crítica e libertadora. Itinerarius Reflectionis, Jataí-GO., v. 18, n. 1, p. 01–19, 2022. Disponível em: <a
          href="https://revistas.ufj.edu.br/rir/article/view/64199"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://revistas.ufj.edu.br/rir/article/view/64199</a>.
      </p>
      <p class="mt-4 mb-8 ">
        MADUREIRA, João Cláudio. A Ciência e a Tecnologia nos Institutos Federais e seu potencial transformador: Um Breve Diálogo Com Álvaro Vieira Pinto (E o Materialismo Histórico-Dialético). Desenvolvimento e Civilização: v. 1, 2020. p. 102- 115. Disponível em: <a
          href="https://www.e-publicacoes.uerj.br/rdciv/article/view/55183/36398"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://www.e-publicacoes.uerj.br/rdciv/article/view/55183/36398</a>.
      </p>
      <hr class="my-8" />
    </section>
    <section class="bg-gray-50 body-text py-8 px-12 max-w-7xl mx-auto">
      <!-- Resumo -->
      <div class="mb-8">
        <h2 class="title-main font-bold text-gray-800 mb-4">📑 Resumo</h2>
        <ul class="mt-6 pl-6 list-disc">
          <li class="text-gray-700 mb-4">
            A Educação Profissional e Tecnológica (EPT) no Brasil representa uma evolução no ensino profissionalizante, estabelecida pela Lei nº 11.741 de 2008.
          </li>
          <li class="text-gray-700 mb-4">
            Os Institutos Federais (IFs), criados em 2008, são pilares fundamentais da EPT, tendo como missão promover justiça social, desenvolvimento econômico e inovação tecnológica.
          </li>
          <li class="text-gray-700">
            A tecnologia na EPT vai além do uso instrumental, sendo entendida como uma construção social que deve ser democratizada. A EPT busca formar profissionais que não apenas utilizem as tecnologias, mas sejam capazes de compreendê-las criticamente, criá-las e transformá-las, considerando seus impactos sociais e ambientais.
          </li>
        </ul>
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/3/tecnodiversidade-ept")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/3/apresentacao")}
  end
end
