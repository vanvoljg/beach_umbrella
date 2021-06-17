defmodule AppGTest do
  use ExUnit.Case
  doctest AppG

  test "greets the world" do
    assert AppG.hello() == :world
  end
end
