defmodule AppC do
  @moduledoc """
  Documentation for `AppC`.
  """

  def run do 
    IO.inspect("app_c #{DateTime.utc_now()}")
  end
end
