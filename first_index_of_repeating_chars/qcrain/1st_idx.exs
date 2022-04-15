defmodule FirstIndexOfRepeatingChars do
  def first(<<c, remaining::binary>>) do
    first(remaining, 1, [{c, 0}])
  end

  def first(<<>>, _, result), do: Enum.reverse(result)

  def first(<<c, remaining::binary>>, i, [{c, _} | _] = result) do
    first(remaining, i + 1, result)
  end

  def first(<<c, remaining::binary>>, i, result) do
    first(remaining, i + 1, [{c, i} | result])
  end
end

defmodule FirstIndexOfRepeatingChars2 do
  def first(s) do
    s
    |> String.to_charlist()
    |> Enum.with_index()
    |> Enum.dedup_by(fn {e, _} -> e end)
  end
end

[s | _] = System.argv()

FirstIndexOfRepeatingChars.first(s) |> inspect |> IO.puts()

FirstIndexOfRepeatingChars2.first(s) |> inspect |> IO.puts()
