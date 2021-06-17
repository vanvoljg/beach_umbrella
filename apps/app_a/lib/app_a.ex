defmodule AppA do
  @moduledoc """
  Documentation for `AppA`.
  """

  def run do 
    IO.inspect("app_a #{DateTime.utc_now()}")
  end
end
