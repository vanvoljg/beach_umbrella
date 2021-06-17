defmodule AppHTest do
  use ExUnit.Case
  doctest AppH

  test "greets the world" do
    assert AppH.hello() == :world
  end
end
