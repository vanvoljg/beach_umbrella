defmodule Mix.Tasks.LoadAllApps do
  @moduledoc false

  use Mix.Task

  @applications ~w[
    app_e
  ]a

  @impl true
  def run(_args) do
    {:ok, _app} = Application.ensure_all_started(:rexbug, :permanent)

    rtp = ":application.ensure_all_started/4"
    time = 60000
    Rexbug.start(rtp, time: time)

    Enum.each(@applications, fn app ->
      {:ok, apps_started} = Application.ensure_all_started(app)
      IO.puts("#{DateTime.utc_now()}: #{app}: #{inspect(apps_started)}")
    end)

    IO.inspect(DateTime.utc_now())
    :ok
  end
end
