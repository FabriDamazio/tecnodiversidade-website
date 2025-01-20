defmodule TecnodiversidadeWeb.Modulo11Live do
  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts
  use TecnodiversidadeWeb, :live_view

  @block_id 1

  def mount(_params, session, socket) do
    # terminar a lógica para recuperar o id do user logado e setar seu id no socket
    # para usa-lo no handle event
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
          Módulo 1 - Conceitos de Tecnologias
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <div class="flex justify-center">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/apresentacao_modulo_1.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="mt-8">
        No nosso dia a dia, usamos constantemente a palavra "tecnologia", mas você já parou para pensar sobre seus diferentes significados? Será que realmente compreendemos o que é a tecnologia e o que está por trás das transformações vindas com ela? Quem decide os rumos da tecnologia? A quem ela serve? Quais são seus impactos reais?
      </p>
      <p class="mt-4">
        É sobre isso que vamos falar neste módulo, tendo como principais referências os autores Álvaro Vieira Pinto e Andrew Feenberg.
      </p>
      <p class="mt-4">
        A leitura da bibliografia básica é parte fundamental deste módulo, sendo importante para a construção da base teórica necessária à compreensão do conteúdo.
      </p>
      <p class="mt-4">
        Bons estudos!
      </p>
      <div class="flex justify-end mt-4">
        <button
          class="px-6 py-2 bg-green-600 text-white font-semibold rounded-lg hover:bg-green-700 transition"
          phx-click="avancar"
        >
          Avançar
        </button>
      </div>
    </section>
    """
  end

  def handle_event("avancar", _params, socket) do
    case socket.assigns[:user_id] do
      user_id when is_integer(user_id) ->
        ProgressTracker.save_user_progress(@block_id, user_id)

      _ ->
        {:noreply, push_navigate(socket, to: ~p"/modulos/1/pergunta")}
    end

    {:noreply, push_navigate(socket, to: ~p"/modulos/1/pergunta")}
  end
end
