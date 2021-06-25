defmodule Mix.Tasks.LoadAllApps do
  @moduledoc false

  use Mix.Task

  @impl true
  def run([app_name] = _args) do

    {:ok, _app} = Application.ensure_all_started(:rexbug, :permanent)
    rtp = [":application.ensure_all_started/_"]
    # rtp = ":application.ensure_all_started/4"
    time = 60000
    msgs = 1_000_000_000
    Rexbug.start(rtp, time: time, msgs: msgs)

    {:ok, apps_started} =
      app_name
      |> String.to_existing_atom()
      |> Application.ensure_all_started()

    IO.puts("#{DateTime.utc_now()}: #{app_name}: #{inspect(apps_started)}")
    :ok
  end
end
