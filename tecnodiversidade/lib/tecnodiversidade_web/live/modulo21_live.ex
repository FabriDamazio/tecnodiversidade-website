defmodule TecnodiversidadeWeb.Modulo21Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 21

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
          Módulo 2 - Tecnodiversidade
        </h1>
      </div>
    </section>

    <section class="body-text py-8 px-12 max-w-7xl mx-auto">
      <div class="flex justify-center">
        <video class="w-full max-w-3xl h-auto" controls>
          <source src="/videos/apresentacao_modulo_2.mp4" type="video/mp4" />
          Seu navegador não suporta o elemento de vídeo.
        </video>
      </div>
      <p class="mt-8">
        Neste módulo, exploraremos o conceito de tecnodiversidade com base na teoria do filósofo da tecnologia Yuk Hui. Além disso, analisaremos como a tecnodiversidade pode contribuir para a realidade brasileira e quais iniciativas já estão em andamento nesse contexto.
      </p>
      <p class="mt-4">
        Assim como no Módulo 1, a leitura da bibliografia básica é parte fundamental para a compreensão do conceito de tecnodiversidade e das discussões feitas ao longo deste módulo.
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

  def handle_event("avancar", _, socket) do
    if(socket.assigns[:user_id] != nil) do
      ProgressTracker.save_user_progress(@block_id, socket.assigns[:user_id])
    end

    {:noreply, push_navigate(socket, to: ~p"/modulos/2/conceito-tecnodiversidade")}
  end
end
