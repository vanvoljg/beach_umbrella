defmodule AppE.MixProject do
  use Mix.Project

  def project do
    [
      app: :app_e,
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
      run: [~s<run -e "AppE.run()">]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :runtime_tools],
      mod: {AppE.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:app_a, in_umbrella: true},
      {:app_b, in_umbrella: true},
      {:app_c, in_umbrella: true},
      {:app_d, in_umbrella: true},
    ]
  end
end
