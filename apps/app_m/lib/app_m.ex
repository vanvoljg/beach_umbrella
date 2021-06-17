defmodule AppM do
  @moduledoc """
  Documentation for `AppM`.
  """

  def run do 
    IO.inspect("app_m #{DateTime.utc_now()}")
  end
end
