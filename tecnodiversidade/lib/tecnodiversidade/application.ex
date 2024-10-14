defmodule Tecnodiversidade.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TecnodiversidadeWeb.Telemetry,
      Tecnodiversidade.Repo,
      {DNSCluster, query: Application.get_env(:tecnodiversidade, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Tecnodiversidade.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Tecnodiversidade.Finch},
      # Start a worker by calling: Tecnodiversidade.Worker.start_link(arg)
      # {Tecnodiversidade.Worker, arg},
      # Start to serve requests, typically the last entry
      TecnodiversidadeWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tecnodiversidade.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TecnodiversidadeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
