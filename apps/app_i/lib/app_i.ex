defmodule AppI do
  @moduledoc """
  Documentation for `AppI`.
  """

  def run do 
    IO.inspect("app_i #{DateTime.utc_now()}")
  end
end
