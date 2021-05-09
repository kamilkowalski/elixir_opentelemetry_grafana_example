defmodule OtelExampleGrafana.Repo do
  use Ecto.Repo,
    otp_app: :otel_example_grafana,
    adapter: Ecto.Adapters.Postgres
end
