defmodule BTest do
  use ExUnit.Case
  doctest B

  test "greets the world" do
    assert B.hello() == :world
  end
end
