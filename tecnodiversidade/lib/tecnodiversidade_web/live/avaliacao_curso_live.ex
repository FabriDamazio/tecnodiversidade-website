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
          Participe da pesquisa e avalie o curso
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <p class="mt-4">
        Considerando a importância de alinhar nosso trabalho aos objetivos do Programa de Mestrado Profissional em Educação Profissional e Tecnológica, desenvolvemos este curso baseado na pesquisa “Intersecções entre Tecnologia e Educação Profissional e Tecnológica: Desafios e Perspectivas para a Tecnodiversidade”, conduzida pela mestranda Luciana Garcia dos Reis, sob a orientação da Profa. Dra. Luciana dos Santos Rosenau.
      </p>
      <p class="mt-4">
        Para finalizar esta etapa, contamos mais uma vez com o seu apoio na avaliação do curso. Sua participação é muito importante.
      </p>
      <p class="mt-4">
        O tempo estimado para responder é de aproximadamente 5 (cinco) minutos.
      </p>
      <p class="mt-4 mb-8 ">
        Acesse o formulário de avaliação: <a
          href="https://docs.google.com/forms/d/e/1FAIpQLScYRsUSgMtGlixfrSMGn0PiMhSywVSbxaGFYiDQ7W_1p4WOVQ/viewform"
          target="_blank"
          class="text-blue-500 hover:underline"
        >https://docs.google.com/forms/d/e/1FAIpQLScYRsUSgMtGlixfrSMGn0PiMhSywVSbxaGFYiDQ7W_1p4WOVQ/viewform</a>.
      </p>
    </section>
    """
  end
end
