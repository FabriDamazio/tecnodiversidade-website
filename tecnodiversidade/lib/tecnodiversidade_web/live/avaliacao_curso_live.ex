defmodule TecnodiversidadeWeb.AvaliacaoCursoLive do
  use TecnodiversidadeWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <section class="bg-gray-900 text-white">
      <div class="container mx-auto px-4 py-16 flex flex-col items-center text-center space-y-6 sm:space-y-8 lg:space-y-10">
        <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold tracking-tight">
          Avaliação do Curso
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Concluímos o módulo 1 nos aprofundando nos estudos de dois pensadores fundamentais no campo da filosofia da tecnologia: Álvaro Vieira Pinto e Andrew Feenberg. Suas contribuições nos convidam a desconstruir visões simplistas e deterministas sobre a tecnologia, revelando-a como um campo complexo, atravessado por relações de poder, valores sociais e possibilidades de transformação.
      </p>
      <p class="mt-4">
        Vieira Pinto nos apresentou uma perspectiva crítica compreendendo a tecnologia não como um elemento externo ou neutro, mas como uma produção humana intrinsecamente conectada aos projetos de sociedade. Já Feenberg aprofundou essa discussão através do construtivismo crítico, demonstrando como cada artefato tecnológico carrega em si narrativas políticas, sociais e culturais.
      </p>
      <p class="mt-4">
        No próximo módulo, exploraremos o conceito de tecnodiversidade desenvolvido pelo filósofo Yuk Hui. Suas reflexões nos convidarão a compreender a tecnologia para além de uma lógica ocidental e universal, reconhecendo as múltiplas cosmologias e formas de relação com os sistemas técnicos.
      </p>
      <p class="mt-4">
        Até o próximo módulo!
      </p>
    </section>
    """
  end
end
