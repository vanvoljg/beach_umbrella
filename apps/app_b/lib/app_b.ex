defmodule AppB do
  @moduledoc """
  Documentation for `AppB`.
  """

  def run do 
    IO.inspect("app_b #{DateTime.utc_now()}")
  end
end
