defmodule PhoenixUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PhoenixUiWeb.Telemetry,
      PhoenixUi.Repo,
      {Ecto.Migrator,
        repos: Application.fetch_env!(:phoenix_ui, :ecto_repos),
        skip: skip_migrations?()},
      {DNSCluster, query: Application.get_env(:phoenix_ui, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: PhoenixUi.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: PhoenixUi.Finch},
      # Start a worker by calling: PhoenixUi.Worker.start_link(arg)
      # {PhoenixUi.Worker, arg},
      # Start to serve requests, typically the last entry
      PhoenixUiWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhoenixUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end

  defp skip_migrations?() do
    # By default, sqlite migrations are run when using a release
    System.get_env("RELEASE_NAME") != nil
  end
end
