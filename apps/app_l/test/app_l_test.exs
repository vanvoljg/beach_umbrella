defmodule AppLTest do
  use ExUnit.Case
  doctest AppL

  test "greets the world" do
    assert AppL.hello() == :world
  end
end
