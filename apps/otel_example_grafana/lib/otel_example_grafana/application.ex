defmodule OtelExampleGrafana.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      OtelExampleGrafana.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: OtelExampleGrafana.PubSub}
      # Start a worker by calling: OtelExampleGrafana.Worker.start_link(arg)
      # {OtelExampleGrafana.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: OtelExampleGrafana.Supervisor)
  end
end
