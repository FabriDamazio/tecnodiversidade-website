defmodule TecnodiversidadeWeb.Modulo23Live do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          As discussões de tecnodiversidade à partir do Sul Global
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
          <h2 class="title-main text-gray-800 mb-4">📚 Material Complementar</h2>
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
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/mapeamento-alternativas-tecnodiversas")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/conceito-tecnodiversidade")}
  end
end
