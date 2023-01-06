defmodule BowlingGameKataTest do
  use ExUnit.Case
  doctest BowlingGameKata

  test "all 0" do
    list = List.duplicate({0, 0}, 10)
    assert BowlingGameKata.score!(list) == 0
  end

  test "all 1" do
    list = List.duplicate({1, 1}, 10)
    assert BowlingGameKata.score!(list) == 20
  end

  test "spare" do
    list = [{5, 5}, {3, 0}] ++ List.duplicate({0, 0}, 8)
    assert BowlingGameKata.score!(list) == 16
  end

  test "strike" do
    list = [{10}, {3, 4}] ++ List.duplicate({0, 0}, 8)
    assert BowlingGameKata.score!(list) == 24
  end

  test "perfect game" do
    list = List.duplicate({10}, 9) ++ [{10, 10, 10}]
    assert BowlingGameKata.score!(list) == 300
  end

  test "scoring bowling 1" do
    list = [{1, 4}, {4, 5}, {6, 4}, {5, 5}, {10}, {0, 1}, {7, 3}, {6, 4}, {10}, {2, 8, 6}]
    assert BowlingGameKata.score!(list) == 133
  end

  test "scoring bowling 2" do
    list = List.duplicate({1, 1}, 9) ++ [{1, 9, 1}]
    assert BowlingGameKata.score!(list) == 29
  end

  test "scoring bowling 3" do
    # https://hideo002.com/archives/5639
    list = [{3, 5}, {6, 1}, {3, 2}, {7, 1}, {10}, {9, 1}, {10}, {10}, {2, 5}, {2, 8, 3}]
    assert BowlingGameKata.score!(list) == 127
  end

  test "scoring bowling 4" do
    # https://nageyo.com/score/
    list = [{9, 1}, {8, 0}, {10}, {10}, {9, 0}, {10}, {10}, {10}, {7, 3}, {9, 1, 10}]
    assert BowlingGameKata.score!(list) == 199
  end

  test "scoring bowling 5" do
    # https://codezine.jp/article/detail/13320
    list = [{6, 4}, {8, 0}, {10}, {2, 7}, {5, 5}, {3, 4}, {10}, {9, 1}, {1, 2}, {7, 1}]
    assert BowlingGameKata.score!(list) == 116
  end

  test "scoring bowling 6" do
    # https://codezine.jp/article/detail/13320
    list = [{1, 8}, {9, 1}, {7, 2}, {10}, {0, 0}, {9, 1}, {3, 6}, {8, 0}, {5, 4}, {10, 8, 1}]
    assert BowlingGameKata.score!(list) == 103
  end

  test "scoring bowling 7" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {10}, {10, 10, 0}]
    assert BowlingGameKata.score!(list) == 80
  end

  test "scoring bowling 8" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {10}, {5, 5, 0}]
    assert BowlingGameKata.score!(list) == 55
  end

  test "scoring bowling 9" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {10}, {0, 0}]
    assert BowlingGameKata.score!(list) == 30
  end

  test "scoring bowling 10" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {5, 5}, {10, 10, 0}]
    assert BowlingGameKata.score!(list) == 60
  end

  test "scoring bowling 11" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {5, 5}, {5, 5, 0}]
    assert BowlingGameKata.score!(list) == 45
  end

  test "scoring bowling 12" do
    list = List.duplicate({0, 0}, 7) ++ [{10}, {5, 5}, {0, 0}]
    assert BowlingGameKata.score!(list) == 30
  end

  test "scoring bowling 13" do
    list = List.duplicate({0, 0}, 7) ++ [{5, 5}, {10}, {10, 10, 0}]
    assert BowlingGameKata.score!(list) == 70
  end

  test "scoring bowling 14" do
    list = List.duplicate({0, 0}, 7) ++ [{5, 5}, {10}, {5, 5, 0}]
    assert BowlingGameKata.score!(list) == 50
  end

  test "scoring bowling 15" do
    list = List.duplicate({0, 0}, 7) ++ [{5, 5}, {10}, {0, 0}]
    assert BowlingGameKata.score!(list) == 30
  end

  test "scoring bowling 16" do
    list = List.duplicate({0, 0}, 8) ++ [{5, 5}, {10, 10, 0}]
    assert BowlingGameKata.score!(list) == 40
  end

  test "scoring bowling 17" do
    list = List.duplicate({0, 0}, 8) ++ [{5, 5}, {5, 5, 0}]
    assert BowlingGameKata.score!(list) == 25
  end

  test "scoring bowling 18" do
    list = List.duplicate({0, 0}, 8) ++ [{5, 5}, {0, 0}]
    assert BowlingGameKata.score!(list) == 10
  end

  test "scoring bowling 19" do
    list = List.duplicate({0, 0}, 9) ++ [{10, 10, 0}]
    assert BowlingGameKata.score!(list) == 20
  end

  test "scoring bowling 20" do
    list = List.duplicate({0, 0}, 9) ++ [{5, 5, 0}]
    assert BowlingGameKata.score!(list) == 10
  end

  test "scoring bowling 21" do
    list = List.duplicate({0, 0}, 9) ++ [{0, 0}]
    assert BowlingGameKata.score!(list) == 0
  end
end
