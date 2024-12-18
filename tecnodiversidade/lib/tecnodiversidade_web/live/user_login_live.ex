defmodule TecnodiversidadeWeb.UserLoginLive do
  use TecnodiversidadeWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm">
      <.header class="text-center">
        Entrar na sua conta
        <:subtitle>
          Não tem uma conta?
          <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
            Crie uma conta
          </.link>
        </:subtitle>
      </.header>

      <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} phx-update="ignore">
        <.input field={@form[:email]} type="email" label="E-mail" required />
        <.input field={@form[:password]} type="password" label="Senha" required />

        <:actions>
          <.input field={@form[:remember_me]} type="checkbox" label="Me mantenha conectado" />
          <.link href={~p"/users/reset_password"} class="text-sm font-semibold">
            Esqueceu a sua senha?
          </.link>
        </:actions>
        <:actions>
          <.button phx-disable-with="Entrando..." class="w-full">
            Entrar  <span aria-hidden="true">→</span>
          </.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: form]}
  end
end
