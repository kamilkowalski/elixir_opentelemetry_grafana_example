# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :otel_example_grafana,
  ecto_repos: [OtelExampleGrafana.Repo]

config :otel_example_grafana_web,
  ecto_repos: [OtelExampleGrafana.Repo],
  generators: [context_app: :otel_example_grafana]

# Configures the endpoint
config :otel_example_grafana_web, OtelExampleGrafanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MwDLHZtzWb3mYG6yG/pf+CHB3nUr6XSEx4GVlfreEpYYv8Lfg25oYyBYr+s/h/zV",
  render_errors: [view: OtelExampleGrafanaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: OtelExampleGrafana.PubSub,
  live_view: [signing_salt: "r6S/AUUu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
