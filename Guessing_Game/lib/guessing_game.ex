defmodule GuessingGame do
  # guess between low and high number -> guess middle
  # tell user our guess
  # "yes" -> game over
  # "bigger" -> bigger(low, high)
  # "smaller" -> smaller(low, high)
  # anything else -> tell user to enter a valid response

  def mid(low, high) do
    div(low + high, 2)
  end
end
