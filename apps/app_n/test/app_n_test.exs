defmodule AppNTest do
  use ExUnit.Case
  doctest AppN

  test "greets the world" do
    assert AppN.hello() == :world
  end
end
