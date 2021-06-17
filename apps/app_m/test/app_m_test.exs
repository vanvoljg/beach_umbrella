defmodule AppMTest do
  use ExUnit.Case
  doctest AppM

  test "greets the world" do
    assert AppM.hello() == :world
  end
end
