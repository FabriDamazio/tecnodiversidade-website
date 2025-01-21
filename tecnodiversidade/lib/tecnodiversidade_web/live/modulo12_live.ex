defmodule TecnodiversidadeWeb.Modulo12Live do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.ProgressTracker
  alias Tecnodiversidade.Accounts.User
  alias Tecnodiversidade.Accounts

  @block_id 12

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
          Conceitos de Tecnologia
        </h1>
      </div>
    </section>
    <div class="flex flex-col items-center bg-gray-100 min-h-screen">
      <div class="bg-white p-8 rounded-lg shadow-md max-w-7xl w-full mt-12">
        <h2 class="text-2xl font-semibold mb-6 text-center">
          Quais são as primeiras três palavras ou conceitos que surgem em sua mente quando você pensa em tecnologia?
        </h2>

        <form phx-submit="enviar_resposta">
          <div class="mb-6">
            <textarea
              name="resposta"
              placeholder="Digite sua resposta aqui"
              rows="8"
              class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
            ></textarea>
          </div>
          <div class="mb-4 text-center">
            <button
              type="submit"
              class="px-6 py-2 bg-[#FECB37]  font-semibold rounded-lg hover:bg-[#deaf26] transition"
            >
              Enviar resposta
            </button>
          </div>
          <div class="flex justify-between mt-4">
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
        </form>
      </div>
    </div>
    """
  end

  def handle_event("avancar", _, socket) do
    if(socket.assigns[:user_id] != nil) do
      ProgressTracker.save_user_progress(@block_id, socket.assigns[:user_id])
    end

    {:noreply, push_navigate(socket, to: ~p"/modulos/1/conceito-tecnologia")}
  end

  def handle_event("voltar", _, socket) do
    {:noreply, push_navigate(socket, to: ~p"/modulos/1/apresentacao")}
  end

  def handle_event("enviar_resposta", %{"resposta" => resposta}, socket) do
    # SALVAR A RESPOSTA AQUI
    IO.inspect(resposta)

    {:noreply, push_navigate(socket, to: ~p"/modulos/1/conceito-tecnologia")}
  end
end
