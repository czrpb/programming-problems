defmodule Identicalcharsindex do
  @moduledoc """
  Documentation for `Identicalcharsindex`.
  """
  def get_char_start_index([_], acc), do: acc
  def get_char_start_index([first, second|rest], acc) do
    cond do
      elem(first, 0) != elem(second, 0) -> get_char_start_index([second|rest], acc ++ [second])
      true -> get_char_start_index([second|rest], acc)
    end
  end
  def identicalcharsindex(input_str) do
    char_list_w_idx = input_str |> String.to_charlist |> Enum.with_index
    cond do
      char_list_w_idx == [] -> []
      true -> get_char_start_index(char_list_w_idx, [hd(char_list_w_idx)])
    end
  end
end
