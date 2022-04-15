defmodule Sublist do
  def sublist?(_, []), do: :missing

  def sublist?(l, l), do: :equal

  def sublist?(l1, l2) do
    if List.starts_with?(l2, l1) do
      :sublist
    else
      sublist?(l1, tl(l2))
    end
  end
end

[l1, l2] = System.argv()
|> Enum.take(2)
|> Enum.map(&String.to_charlist/1)

Sublist.sublist?(l1, l2)
|> inspect |> IO.puts
