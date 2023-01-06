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

  """
  def score(list) do
    do_score(list, [])
  end

  defp do_score([], scores), do: Enum.sum(scores)

  defp do_score([head | tail], scores) do
    new_scores = scores(head, scores)
    do_score(tail, new_scores)
  end

  defp scores({a, b}, scores), do: scores ++ [a + b]
end
