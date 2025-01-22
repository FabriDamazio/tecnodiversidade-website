defmodule TecnodiversidadeWeb.Modulo22Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 22

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
          Conceito de Tecnodiversidade
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-8">
        Se dialogamos sobre a biodiversidade e outros tipos de diversidade, por que tradicionalmente não falamos sobre a diversidade tecnológica? Esta é a provocação inicial do filósofo Yuk Hui, que nos convida a explorar o conceito da tecnodiversidade.
      </p>
      <p class="mt-4 mb-4">
        Antes de tratarmos do conceito de tecnodiversidade, vamos entender o seu contexto com a vídeo-aula a seguir:
      </p>
      <div class="flex justify-center">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/contexto_tecnodiversidade.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="mt-8">
        Partindo de uma análise histórica, Hui afirma que a competição tecnológica do século XX definiu a geopolítica e a história. Além disso, difundiu a ideia de uma tecnologia moderna, de caráter meramente instrumental, como algo homogêneo e universal e, nesse sentido, separado das outras dimensões da sociedade.
      </p>
      <p class="mt-4">
        Esse universalismo tecnológico desconsiderou os conhecimentos locais, os contextos culturais e as necessidades específicas de cada povo. Como resultado, muitas formas tradicionais e alternativas de tecnologia foram ignoradas ou desvalorizadas.
      </p>
      <p class="mt-4">
        Neste contexto de universalização tecnológica, o poder tecnologicamente mais forte exportou, além de seus conhecimentos e técnicas, suas epistemologias, desconsiderando outras formas de compreensão técnica e cultural, apagando, assim, uma multiplicidade de técnicas. Essa universalização atuou com o apagamento das interioridades locais, transformando a diversidade técnica e cultural em uma cultura monotecnológica, e a “competição baseada na monotecnologia está devastando os recursos da Terra em prol da competição e do lucro e impedindo que qualquer dos participantes tome rotas ou caminhos alternativos” (Hui, 2020, p. 201).
      </p>
      <p class="highlight mt-8">
        Tecnodiversidade como Alternativa
      </p>
      <p class="mt-4">
        Como uma possível forma de equilibrar a monotecnologização e alterar modelo de desenvolvimento tecnológico, Hui formula o conceito de Tecnodiversidade, entendido como uma forma de abordar a diversidade tecnológica presente nas diferentes regiões do mundo, buscando uma compreensão da tecnologia e da cultura para a criação de novas trajetórias tecnológicas. Ainda, para o autor, cada povo tem suas cosmotécnicas, que é a unificação do cosmos (universo) e da moral por meio de atividades técnicas. Seria, portanto, a ideia de que diferentes culturas têm diferentes abordagens para a tecnologia.
      </p>
      <p class="mt-4">
        A multiplicidade de cosmotécnicas sugere que não existe apenas uma ou duas técnicas universais, mas sim muitas abordagens que variam conforme a moralidade e o cosmos de cada cultura. Para enfrentar as crises contemporâneas — como o Antropoceno e suas implicações — é essencial rearticular a questão da tecnologia, buscando futuros tecnológicos diversos tendo em mente a concepção de cosmotécnicas distintas.
      </p>
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4 items-center mt-4">
        <div>
          <p class="mt-4">
            Hui ilustra o mito da universalidade técnica ao discutir o uso de pesticidas como uma solução global para pragas em plantações, mas que dependem de fatores locais como ar, clima, etc., para funcionar efetivamente.
          </p>
          <p class="mt-4">
            No Brasil, a técnica agrossilvipastoril já se mostrou como uma alternativa ao uso de pesticidas para a produção, sendo uma possibilidade que considera as técnicas e os aspectos locais, uma possível cosmotécnica.
          </p>
        </div>
        <div>
          <img
            src="/images/modulo_2_tecnodiversidade.png"
            alt="Imagem relacionada às acepções da tecnologia"
            class="w-full rounded-md"
          />
        </div>
      </div>
      <p class="mt-4">
        A proposta de tecnodiversidade não é uma luta contra as tecnologias modernas, mas sim uma reapropriação criativa delas. A tecnodiversidade se distingue claramente de movimentos conservadores; ela não busca restaurar tradições ou promover nacionalismos, mas sim reconhecer o local como um espaço ativo capaz de apropriar-se criativamente dos fluxos materiais e imateriais.
      </p>
      <p class="mt-4">
        A discussão sobre tecnodiversidade nos convida a refletir sobre as relações entre tecnologia e cultura em um mundo cada vez mais interconectado. Ao invés de buscar soluções universais e homogêneas, é crucial valorizar as particularidades locais e promover um diálogo entre diferentes cosmotécnicas. Essa abordagem pode abrir novos caminhos para um desenvolvimento tecnológico mais sustentável e inclusivo.
      </p>
      <hr class="my-8" />
      <h2 class="font-bold">
        Bibliografia básica
      </h2>
      <p class="mt-4">
        HUI, Yuk. Cosmotécnica como cosmopolítica. IN: HUI, Yuk. <b>Tecnodiversidade.</b>
        São Paulo: Ubu, 2020. p. 21- 46.
      </p>
      <p class="mt-4 mb-8 ">
        MARIUTTI, Eduardo Barros. <b>Tecnodiversidade, cosmotécnica e cosmopolítica:</b>
        notas sobre o pensamento de Yuk Hui. Lugar Comum–Estudos de mídia, cultura e democracia, n. 62, p. 146- 159, 2022. Disponível em: <a
          href="https://revistas.ufrj.br/index.php/lc/article/view/49578"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://revistas.ufrj.br/index.php/lc/article/view/49578</a>.
      </p>
      <hr class="my-8" />
    </section>
    <section class="bg-gray-50 body-text py-8 px-12 max-w-7xl mx-auto">
      <!-- Resumo -->
      <div class="mb-8">
        <h2 class="title-main font-bold text-gray-800 mb-4">📑 Resumo</h2>
        <ul class="mt-6 pl-6 list-disc">
          <li class="text-gray-700 mb-4">
            No século XX, a competição tecnológica moldou a geopolítica e difundiu uma visão universalista da tecnologia moderna, tratando-a como algo homogêneo e separado das dimensões sociais.
          </li>
          <li class="text-gray-700 mb-4">
            O universalismo tecnológico resultou no desprezo pelos conhecimentos locais e técnicas tradicionais, com as potências tecnológicas exportando não apenas suas técnicas, mas também suas epistemologias.
          </li>
          <li class="text-gray-700">
            Como alternativa a homogeneização, Hui propõe o conceito de Tecnodiversidade, que reconhece e valoriza as diferentes abordagens tecnológicas presentes no mundo.
          </li>
          <li class="text-gray-700">
            A tecnodiversidade não se opõe às tecnologias modernas, mas propõe sua reapropriação criativa, evitando nacionalismos ou tradicionalismos extremos.
          </li>
        </ul>
      </div>
      <hr class="mb-8" />
      <!-- Glossário -->
      <div>
        <h2 class="title-main font-bold text-gray-800 mb-4">🗂️ Glossário</h2>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Antropoceno:</strong>
            termo utilizado para descrever uma nova época geológica caracterizada pelo impacto significativo das atividades humanas sobre o planeta.
          </p>
        </div>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Globalização unilateral:</strong>
            processo histórico em que um único modelo político, econômico ou tecnológico (geralmente oriundo de potências ocidentais) é imposto como padrão global.
          </p>
        </div>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Monotecnologia:</strong>
            Adoção de uma única abordagem tecnológica globalmente, em detrimento da diversidade de práticas e conhecimentos técnicos.
          </p>
        </div>
        <div class="mb-6">
          <p class="text-gray-700">
            <strong>Técnica agrossilvipastoril:</strong>
            sistema integrado de produção agrícola, florestal e pecuária que valoriza práticas locais e sustentáveis.
          </p>
        </div>
        <hr class="mb-8" />
        <div class="mb-8">
          <h2 class="title-main text-gray-800 mb-4">📚 Leitura Complementar</h2>
          <p class="text-gray-700">
            Para conhecer um pouco mais do pensamento do filósofo Yuk Hui, sugerimos a leitura da entrevista “A tecnodiversidade implica em pensar divergências no seio do desenvolvimento tecnológico”, disponível em:
            <a
              href="http://www.ihu.unisinos.br/78-noticias/602272-a-tecnodiversidade-implicapensar-divergencias-no-seio-do-desenvolvimento-tecnologico-entrevistaco%E2%80%A6"
              target="_blank"
              class="text-blue-500 hover:underline"
            >
              http://www.ihu.unisinos.br/78-noticias/602272-a-tecnodiversidade-implicapensar-divergencias-no-seio-do-desenvolvimento-tecnologico-entrevistaco%E2%80%A6
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

    {:noreply, push_navigate(socket, to: ~p"/modulos/2/discussoes-tecnodiversidade")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/2/apresentacao")}
  end
end
