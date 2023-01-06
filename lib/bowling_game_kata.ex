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

  """
  def score(list) do
    do_score(list, false, [])
  end

  defp do_score([], _spared, scores), do: Enum.sum(scores)

  defp do_score([head | tail], spared, scores) do
    new_scores = scores(head, spared, scores)
    new_spared = spared(head)
    do_score(tail, new_spared, new_scores)
  end

  defp scores({a, b}, _, scores) when a + b == 10, do: scores

  defp scores({a, b}, true, scores), do: scores({a, b}, spared({a, b}), scores ++ [10 + a])

  defp scores({a, b}, false, scores), do: scores ++ [a + b]

  defp spared({a, b}) when a + b == 10, do: true

  defp spared(_), do: false
end
