defmodule ClickhouseEcto.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clickhouse_ecto,
      version: "0.2.8",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/appodeal/clickhouse_ecto"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.11.0"},
      {:clickhousex, git: "https://github.com/plausible/clickhousex"},
      {:ex_doc, "~> 0.19", only: :dev},
      {:db_connection, "~> 2.4.2", override: true},
      {:ssl_verify_fun, "~> 1.1.7", override: true}
    ]
  end

  defp package do
    [
      name: "clickhouse_ecto",
      maintainers: maintainers(),
      licenses: ["Apache 2.0"],
      files: ["lib", "test", "config", "mix.exs", "README*", "LICENSE*"],
      links: %{"GitHub" => "https://github.com/appodeal/clickhouse_ecto"}
    ]
  end

  defp description do
    "Ecto adapter for ClickHouse database (uses clickhousex driver)"
  end

  defp maintainers do
    ["Roman Chudov", "Konstantin Grabar", "Evgeniy Shurmin", "Alexey Lukyanov"]
  end
end
