defmodule AppITest do
  use ExUnit.Case
  doctest AppI

  test "greets the world" do
    assert AppI.hello() == :world
  end
end
