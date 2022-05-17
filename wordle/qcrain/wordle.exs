defmodule Wordle do
  def feedback(guess, answer) do
    # find matches and gather possibilities
    {guess, possibilities} = Enum.zip(guess, answer)
    |> Enum.reduce({[], []}, fn
      {same, same}, {result, possibilities} ->
        {[:green|result], possibilities}
      {guessed, possible}, {result, possibilities} ->
        {[guessed|result], [possible|possibilities]}
    end)

    guess = Enum.reverse(guess)

    # find possibilities
    {result, _} = guess
    |> Enum.reduce({[], possibilities}, fn
      item, {result, possibilities} when is_atom(item) -> {[item|result], possibilities}
      item, {result, possibilities} -> cond do
        item in possibilities ->
          # dont forget to remove from future possibilities!!
          {[:yellow|result], List.delete(possibilities, item)}
        true ->
          {[:gray|result], possibilities}
      end
    end)

    Enum.reverse(result)
  end
end

defmodule Wordle2 do
  def hint(guess, answer) do

  end
end


[guess, answer] = System.argv

NumberWordle.feedback(String.to_charlist(guess), String.to_charlist(answer))
|> IO.inspect
