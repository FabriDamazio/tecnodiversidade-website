defmodule TecnodiversidadeWeb.UserRegistrationLive do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.Accounts
  alias Tecnodiversidade.Accounts.User

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm">
      <.header class="text-center">
        Criar uma conta
        <:subtitle>
          Já tem uma conta?
          <.link navigate={~p"/users/log_in"} class="font-semibold text-brand hover:underline">
            Entrar na sua conta
          </.link>
        </:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="registration_form"
        phx-submit="save"
        phx-change="validate"
        phx-trigger-action={@trigger_submit}
        action={~p"/users/log_in?_action=registered"}
        method="post"
      >
        <.error :if={@check_errors}>
          Algo deu errado, verifique os erros abaixo.
        </.error>

        <.input field={@form[:email]} type="email" label="E-mail" />
        <.input field={@form[:password]} type="password" label="Senha" />

        <:actions>
          <.button phx-disable-with="Criando conta..." class="w-full">Criar Conta</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    changeset = Accounts.change_user_registration(%User{})

    socket =
      socket
      |> assign(trigger_submit: false, check_errors: false)
      |> assign_form(changeset)

    {:ok, socket, temporary_assigns: [form: nil]}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    case Accounts.register_user(user_params) do
      {:ok, user} ->
        # utilizar quando tiver o servidor de e-mail configurado
        # {:ok, _} =
        #    Accounts.deliver_user_confirmation_instructions(
        #    user,
        #   &url(~p"/users/confirm/#{&1}")
        #  )

        changeset = Accounts.change_user_registration(user)
        {:noreply, socket |> assign(trigger_submit: true) |> assign_form(changeset)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, socket |> assign(check_errors: true) |> assign_form(changeset)}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Accounts.change_user_registration(%User{}, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    form = to_form(changeset, as: "user")

    if changeset.valid? do
      assign(socket, form: form, check_errors: false)
    else
      assign(socket, form: form)
    end
  end
end
