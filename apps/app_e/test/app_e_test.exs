defmodule AppETest do
  use ExUnit.Case
  doctest AppE

  test "greets the world" do
    assert AppE.hello() == :world
  end
end
