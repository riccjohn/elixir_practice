defmodule GuessingGame do
  @spec mid(integer, integer) :: integer
  def mid(low, high) do
    div(low + high, 2)
  end

  def guess(low, high) do
    middle_guess = mid(low, high)
    answer = IO.gets("Hmm ... maybe you're thinking of #{middle_guess}?\n")

    case String.trim(answer) do
      "bigger" ->
        guess(middle_guess, high)

      "smaller" ->
        guess(low, middle_guess)

      "yes" ->
        "I knew I'd get it!"

      _ ->
        IO.puts(~s{Type "bigger", "smaller", or "yes"})
        guess(low, high)
    end
  end
end
