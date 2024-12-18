defmodule TecnodiversidadeWeb.UserForgotPasswordLive do
  use TecnodiversidadeWeb, :live_view

  alias Tecnodiversidade.Accounts

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm">
      <.header class="text-center">
        Esqueceu sua senha?
        <:subtitle>Vamos enviar um link para redefinição de senha no seu e-mail</:subtitle>
      </.header>

      <.simple_form for={@form} id="reset_password_form" phx-submit="send_email">
        <.input field={@form[:email]} type="email" placeholder="Email" required />
        <:actions>
          <.button phx-disable-with="Enviando..." class="w-full">
            Envie instruções para redefinição de senha
          </.button>
        </:actions>
      </.simple_form>
      <p class="text-center text-sm mt-4">
        <.link href={~p"/users/register"}>Criar Conta</.link>
        | <.link href={~p"/users/log_in"}>Entrar</.link>
      </p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, form: to_form(%{}, as: "user"))}
  end

  def handle_event("send_email", %{"user" => %{"email" => email}}, socket) do
    if user = Accounts.get_user_by_email(email) do
      Accounts.deliver_user_reset_password_instructions(
        user,
        &url(~p"/users/reset_password/#{&1}")
      )
    end

    info =
      "Se seu e-mail estiver em nosso sistema, você receberá suas instruções no e-mail em breve."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end
