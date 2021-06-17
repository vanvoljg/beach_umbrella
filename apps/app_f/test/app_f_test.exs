defmodule AppFTest do
  use ExUnit.Case
  doctest AppF

  test "greets the world" do
    assert AppF.hello() == :world
  end
end
