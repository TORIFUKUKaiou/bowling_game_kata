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

  test "spare" do
    list = [{5, 5}, {3, 0}] ++ List.duplicate({0, 0}, 8)
    assert BowlingGameKata.score(list) == 16
  end

  test "strike" do
    list = [{10}, {3, 4}] ++ List.duplicate({0, 0}, 8)
    assert BowlingGameKata.score(list) == 24
  end
end
