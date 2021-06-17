defmodule AppJTest do
  use ExUnit.Case
  doctest AppJ

  test "greets the world" do
    assert AppJ.hello() == :world
  end
end
