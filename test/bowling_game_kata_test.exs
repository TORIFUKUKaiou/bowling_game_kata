defmodule BowlingGameKataTest do
  use ExUnit.Case
  doctest BowlingGameKata

  test "all 0" do
    list = List.duplicate({0, 0}, 10)
    assert BowlingGameKata.score(list) == 0
  end

  test "all 1" do
    list = List.duplicate({1, 1}, 10)
    assert BowlingGameKata.score(list) == 20
  end
end
