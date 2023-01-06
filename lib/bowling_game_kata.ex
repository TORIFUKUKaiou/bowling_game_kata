defmodule BowlingGameKata do
  @moduledoc """
  Documentation for `BowlingGameKata`.
  """

  @doc """
  calculate bowling game score

  ## Examples

      iex> BowlingGameKata.score([{0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}])
      0

      iex> BowlingGameKata.score([{1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}, {1, 1}])
      20

      iex> BowlingGameKata.score([{5, 5}, {3, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}])
      16

      iex> BowlingGameKata.score([{10}, {3, 4}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}])
      24

      iex> BowlingGameKata.score([{10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}, {10}, {10, 10, 10}])
      300

      iex> BowlingGameKata.score([{1, 4}, {4, 5}, {6, 4}, {5, 5}, {10}, {0, 1}, {7, 3}, {6, 4}, {10}, {2, 8, 6}])
      133

  """
  def score(list) do
    do_score(list, false, [], [])
  end

  defp do_score([], _spared, _strikes, scores), do: Enum.sum(scores)

  defp do_score([head | tail], spared, strikes, scores) do
    new_scores = scores(head, spared, strikes, scores)
    new_spared = spared(head)
    new_strikes = strikes(head, strikes)
    do_score(tail, new_spared, new_strikes, new_scores)
  end

  defp scores({10}, true, [], scores), do: scores ++ [10 + 10]

  defp scores({10}, false, [], scores), do: scores

  defp scores({10}, false, [10], scores), do: scores

  defp scores({10}, false, [10, 10], scores), do: scores ++ [30]

  defp scores({a, b, c}, true, [], scores), do: scores ++ [10 + a, a + b + c]

  defp scores({a, b, c}, false, [], scores), do: scores ++ [a + b + c]

  defp scores({a, b, c}, false, [10], scores), do: scores ++ [10 + a + b, a + b + c]

  defp scores({a, b, c}, false, [10, 10], scores),
    do: scores ++ [10 + 10 + a, 10 + a + b, a + b + c]

  defp scores({a, b}, true, [], scores) when a + b == 10, do: scores ++ [10 + a]

  defp scores({a, b}, false, [], scores) when a + b == 10, do: scores

  defp scores({a, b}, false, [10], scores) when a + b == 10, do: scores ++ [10 + a + b]

  defp scores({a, b}, false, [10, 10], scores) when a + b == 10,
    do: scores ++ [10 + 10 + a, 10 + a + b]

  defp scores({a, b}, true, [], scores), do: scores ++ [10 + a, a + b]

  defp scores({a, b}, false, [], scores), do: scores ++ [a + b]

  defp scores({a, b}, false, [10], scores), do: scores ++ [10 + a + b, a + b]

  defp scores({a, b}, false, [10, 10], scores), do: scores ++ [10 + 10 + a, 10 + a + b, a + b]

  defp spared({a, b}) when a + b == 10, do: true

  defp spared(_), do: false

  defp strikes({10}, []), do: [10]

  defp strikes({10}, [10]), do: [10, 10]

  defp strikes({10}, [10, 10]), do: [10, 10]

  defp strikes(_, []), do: []

  defp strikes(_, [10]), do: []

  defp strikes(_, [10, 10]), do: []
end
