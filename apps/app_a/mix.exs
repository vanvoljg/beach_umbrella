defmodule AppA.MixProject do
  use Mix.Project

  def project do
    [
      app: :app_a,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  defp aliases do
    [
      run: [~s<run -e "AppA.run()">]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {AppA.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:absinthe, "~> 1.6"},
      {:absinthe_plug, "~> 1.5"},
      {:apollo_tracing, "~> 0.4"},
      {:bbmustache, "~> 1.5"},
      {:bodyguard, "~> 2.2"},
      {:briefly, "~> 0.3"},
      {:cachex, "~> 3.2"},
      {:cors_plug, "~> 2.0"},
      {:credo, "~> 1.5.1", only: [:dev, :test], runtime: false},
      {:custom_base, "~> 0.2"},
      {:db_connection, "~> 2.4", override: true},
      {:dialyxir, "~> 1.1.0", only: [:dev], runtime: false},
      {:earmark, "~> 1.2"},
      {:excoveralls, "~> 0.13", only: :test},
      {:floki, "~> 0.30.0"},
      {:gen_smtp, "~> 1.1"},
      {:gettext, "~> 0.18.0"},
      {:google_api_sheets, "~> 0.21"},
      {:hackney, "1.17.0"},
      {:hashids, "~> 2.0"},
      {:httpoison, "~> 1.3"},
      {:inquisitor, "~> 0.5"},
      {:jason, "~> 1.1"},
      {:joken, "~> 2.0"},
      {:mongodb_driver, "~> 0.7"},
      {:mox, "~> 1.0", only: :test},
      {:nimble_csv, "~> 1.0"},
      {:nimble_parsec, "~> 1.0"},
      {:params, "~> 2.2.0"},
      {:plug, "~> 1.8"},
      {:plug_cowboy, "~> 2.3"},
      {:poison, "~> 3.1"},
      {:polymorphic_embed, "~> 1.3"},
      {:postgrex, "~> 0.15"},
      {:premailex, "~> 0.3"},
      {:remote_ip, "~> 1.0"},
      {:sage, "~> 0.6.1"},
      {:stream_data, "~> 0.4", only: [:dev, :test]},
      {:swoosh, "~> 1.0"},
      {:telemetry, "~> 0.4"},
      {:telemetry_metrics, "~> 0.5"},
      {:telemetry_metrics_prometheus, "~> 1.0"},
      {:telemetry_poller, "~> 0.5"},
      {:tesla, "~> 1.1"},
      {:tesla_request_id, "~> 0.2"},
      {:unicode_guards, "~> 0.4"},
      {:uri_query, "~> 0.1"}
    ]
  end
end
