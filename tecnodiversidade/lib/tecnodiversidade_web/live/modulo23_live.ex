defmodule TecnodiversidadeWeb.Modulo23Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 23

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
          As discussões de tecnodiversidade à partir da realidade brasileira
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Nos últimos anos, as discussões sobre decolonialidade nos países do Sul Global ganharam relevância em diferentes campos do conhecimento, desde a academia até os debates públicos mais amplos. O movimento decolonial questiona e tenta reverter as heranças coloniais ainda presentes nas sociedades colonizadas. Além disso, busca uma produção de conhecimento diferente da epistemologia eurocêntrica e traz à tona saberes silenciados pelas estruturas colonizadoras. Este movimento expandiu-se significativamente e está presente também nos espaços que refletem sobre o desenvolvimento e o uso das tecnologias contemporâneas e, em muitos aspectos, dialoga com a perspectiva da tecnodiversidade.
      </p>
      <p class="mt-4">
        Na sessão principal “Tecnodiversidade e Colonialismo Digital: Imaginando Outros Futuros” do Fórum da Internet no Brasil, realizado em 2024, em Curitiba, os palestrantes demonstraram que a interseção entre decolonialidade e tecnodiversidade envolve questionar como os avanços tecnológicos são concebidos, desenvolvidos e distribuídos globalmente, além de evidenciar como padrões históricos de dominação podem se reproduzir no ambiente tecnológico.
      </p>
      <p class="mt-4">
        A partir dessas discussões, a tecnodiversidade surge como uma oportunidade para romper com a dependência tecnológica e valorizar as iniciativas e inteligências locais. Também, aponta caminhos para uma inclusão digital que vá além do simples acesso à tecnologia, garantindo também a participação ativa nos processos decisórios de desenvolvimento tecnológico, trazendo diferentes vozes e perspectivas.
      </p>
      <p class="mt-4">
        Explore no mapa mental abaixo os principais aspectos da tecnodiversidade no Brasil.
      </p>
      <div>
        <img
          src="/images/mapa_mental_tecnodiversidade.png"
          alt="Mapa mental mostrando os epistemes e saberes e práticas e tecnologias da tecnodiversidade no Brasil."
          class="w-full rounded-md"
        />
      </div>
      <div class="bg-gray-100 border-l-4 border-gray-900 text-gray-900 p-6 max-w-3xl ml-auto rounded-md shadow-md my-8">
        <blockquote class="text-right italic text-lg">
          "Quando deixamos de desenvolver tecnologias, abandonamos as cosmovisões que temos; abrimos mão de inserir nossa visão, nossas perspectivas nas tecnologias que utilizaremos. Reduzimos a tecnodiversidade.”
        </blockquote>
        <footer class="mt-4 text-right text-sm text-gray-600">
          (Silveira, 2023, p. 68)
        </footer>
      </div>
      <hr class="my-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4 mb-8 ">
        PELLEGRINI, Jerônimo et al. Inteligência local, soberania digital e soberania de dados. In: PENTEADO, Cláudio; PELLEGRINI, Jerônimo; SILVEIRA, Sérgio Amadeu da (org.).
        <b>Plataformização, inteligência artificial e soberania de dados:</b>
        tecnologia no Brasil 2020-2030. São Paulo: Ação Educativa, 2023. p. 56- 77. Disponível em: <a
          href="https://acaoeducativa.org.br/wp-content/uploads/2024/01/tecnologia_no_brasil_2020_2030.pdf"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://acaoeducativa.org.br/wp-content/uploads/2024/01/tecnologia_no_brasil_2020_2030.pdf</a>.
      </p>
      <hr class="mt-8" />
    </section>
    <section class="body-text py-8 px-12 max-w-7xl mx-auto bg-gray-50">
      <div class="mb-8">
        <div class="mb-8">
          <h2 class="title-main text-gray-800 mb-4">📚 Materiais Complementares</h2>
          <p class="text-gray-700">
            Assista à Sessão Principal 1 - Tecnodiversidade e colonialismo digital: Imaginando outros futuros do Fórum da Internet no Brasil e saiba mais sobre o cenário da tecnodiversidade no Brasil. Link:
            <a
              href="https://www.youtube.com/watch?v=EIIOGMlo8z0&t=1890s"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              https://www.youtube.com/watch?v=EIIOGMlo8z0&t=1890s
            </a>
          </p>
        </div>
      </div>
      <div class="grid grid-cols-1 gap-8 mt-6">
        <p class="text-gray-700">
          Também recomendamos:
        </p>
        <a
          href="https://acaoeducativa.org.br/publicacoes/660t/"
          target="_blank"
          rel="noopener noreferrer"
          class="flex flex-col sm:flex-row items-center sm:items-start gap-6 bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300"
        >
          <img
            src="/images/livro_soberania_de_dados.jpg"
            alt="Capa do livro Plataformização, Inteligência Artificial e Soberania de Dados"
            class="w-full sm:w-48 h-32 object-cover rounded-lg sm:rounded-l-lg sm:rounded-r-none"
          />
          <div class="flex-1 text-center sm:text-left p-4">
            <h3 class="text-lg font-semibold text-gray-800">
              Livro: Plataformização, Inteligência Artificial e Soberania de Dados
            </h3>
            <p class="mt-2 text-gray-600">
              O livro oferece uma análise aprofundada sobre como a plataformização e a inteligência artificial estão moldando os cenários econômicos, sociais e políticos do Brasil entre 2020 e 2030.
            </p>
          </div>
        </a>
      </div>
      <div class="grid grid-cols-1 gap-8 mt-6">
        <a
          href="https://www.cgi.br/publicacoes/indice/"
          target="_blank"
          rel="noopener noreferrer"
          class="flex flex-col sm:flex-row items-center sm:items-start gap-6 bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300"
        >
          <img
            src="/images/logo_cgibr.png"
            alt="Logotipo do Comitê Gestor da Internet no Brasil (CGI.br)"
            class="w-full sm:w-48 h-32 object-cover rounded-lg sm:rounded-l-lg sm:rounded-r-none"
          />
          <div class="flex-1 text-center sm:text-left p-4">
            <h3 class="text-lg font-semibold text-gray-800">
              Publicações do Comitê Gestor da Internet no Brasil (CGI.br)
            </h3>
            <p class="mt-2 text-gray-600">
              O Comitê Gestor da Internet no Brasil (CGI.br) disponibiliza diversas publicações e pesquisas sobre tecnologia no país. Os estudos abordam temas como educação, acesso à internet, mundo do trabalho e muito mais.
            </p>
          </div>
        </a>
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/2/mapeamento-alternativas-tecnodiversas")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/conceito-tecnodiversidade")}
  end
end
