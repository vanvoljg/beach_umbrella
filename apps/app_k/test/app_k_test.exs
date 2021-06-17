defmodule AppKTest do
  use ExUnit.Case
  doctest AppK

  test "greets the world" do
    assert AppK.hello() == :world
  end
end
