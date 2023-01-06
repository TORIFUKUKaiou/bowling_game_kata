defmodule Main do
  def main(list) do
    {_score, scores} = BowlingGameKata.score(list)
    print(scores)
  end

  defp print(scores) do
    scores |> Enum.map(fn {pins, _} -> format_pins(pins) end) |> Enum.join("|") |> IO.puts()

    scores
    |> Enum.reduce({[], 0}, fn {_, score}, {acc_scores, acc_score} ->
      new_acc_score = score + acc_score
      {acc_scores ++ [new_acc_score], new_acc_score}
    end)
    |> elem(0)
    |> Enum.map(fn score -> format_score(score) end)
    |> Enum.join("|")
    |> IO.puts()
  end

  defp format_pins({a, b}), do: "#{format_pin(a)} #{format_pin(b)}"
  defp format_pins({a, b, c}), do: "#{format_pins({a, b})} #{format_pin(c)}"
  defp format_pins({10}), do: "10   "

  defp format_pin(v), do: Integer.to_string(v) |> String.pad_leading(2, " ")

  defp format_score(score), do: Integer.to_string(score) |> String.pad_leading(5, " ")
end
