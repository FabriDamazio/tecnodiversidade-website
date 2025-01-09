defmodule TecnodiversidadeWeb.Router do
  use TecnodiversidadeWeb, :router

  import TecnodiversidadeWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {TecnodiversidadeWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TecnodiversidadeWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/recomendacoes", PageController, :recomendacoes
    get "/contatos", PageController, :contatos
    get "/modulos", PageController, :modulos
    live "/avaliacao-curso", AvaliacaoCurso

    # modulo 1
    live "/modulos/1/apresentacao", Modulo11Live
    live "/modulos/1/pergunta", Modulo12Live
    live "/modulos/1/conceito-tecnologia", Modulo13Live
    live "/modulos/1/conceito-tecnologia-feenberg", Modulo14Live
    live "/modulos/1/quiz", Modulo15Live
    live "/modulos/1/encerramento", Modulo16Live

    # modulo 2
    live "/modulos/2/apresentacao", Modulo21Live
    live "/modulos/2/conceito-tecnodiversidade", Modulo22Live
    live "/modulos/2/discussoes-tecnodiversidade", Modulo23Live
    live "/modulos/2/mapeamento-alternativas-tecnodiversas", Modulo24Live
    live "/modulos/2/pergunta", Modulo25Live
    live "/modulos/2/quiz", Modulo26Live
    live "/modulos/2/encerramento", Modulo27Live

    # modulo 3
    live "/modulos/3/apresentacao", Modulo31Live
    live "/modulos/3/questao-tecnologia-ept", Modulo32Live
    live "/modulos/3/tecnodiversidade-ept", Modulo33Live
    live "/modulos/3/quiz", Modulo34Live
    live "/modulos/3/encerramento", Modulo35Live
  end

  # Other scopes may use custom stacks.
  # scope "/api", TecnodiversidadeWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:tecnodiversidade, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: TecnodiversidadeWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end

  ## Authentication routes

  scope "/", TecnodiversidadeWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      on_mount: [{TecnodiversidadeWeb.UserAuth, :redirect_if_user_is_authenticated}] do
      live "/users/register", UserRegistrationLive, :new
      live "/users/log_in", UserLoginLive, :new
      live "/users/reset_password", UserForgotPasswordLive, :new
      live "/users/reset_password/:token", UserResetPasswordLive, :edit
    end

    post "/users/log_in", UserSessionController, :create
  end

  scope "/", TecnodiversidadeWeb do
    pipe_through [:browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{TecnodiversidadeWeb.UserAuth, :ensure_authenticated}] do
      live "/users/settings", UserSettingsLive, :edit
      live "/users/settings/confirm_email/:token", UserSettingsLive, :confirm_email
    end
  end

  scope "/", TecnodiversidadeWeb do
    pipe_through [:browser]

    delete "/users/log_out", UserSessionController, :delete

    live_session :current_user,
      on_mount: [{TecnodiversidadeWeb.UserAuth, :mount_current_user}] do
      live "/users/confirm/:token", UserConfirmationLive, :edit
      live "/users/confirm", UserConfirmationInstructionsLive, :new
    end
  end
end
