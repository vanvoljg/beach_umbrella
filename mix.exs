defmodule BeachUmbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end

  defp aliases do
    [
      run: [~s<run -e "AppN.run()">],
      a: [~s<run -e "AppA.run()">],
      b: [~s<run -e "AppB.run()">],
      c: [~s<run -e "AppC.run()">],
      d: [~s<run -e "AppD.run()">],
      e: [~s<run -e "AppE.run()">],
      f: [~s<run -e "AppF.run()">],
      g: [~s<run -e "AppG.run()">],
      h: [~s<run -e "AppH.run()">],
      i: [~s<run -e "AppI.run()">],
      j: [~s<run -e "AppJ.run()">],
      k: [~s<run -e "AppK.run()">],
      l: [~s<run -e "AppL.run()">],
      m: [~s<run -e "AppM.run()">],
      n: [~s<run -e "AppN.run()">],
    ]
  end
end
