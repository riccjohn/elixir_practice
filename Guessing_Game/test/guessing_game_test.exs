defmodule GuessingGameTest do
  use ExUnit.Case

  describe "mid" do
    test "will find the midpoint given two numbers" do
      high = 50
      low = 0
      result = GuessingGame.mid(low, high)
      assert div(low + high, 2) == result
    end

    test "will find the midpoint given two non-zero numbers" do
      high = 100
      low = 50
      result = GuessingGame.mid(low, high)
      assert div(low + high, 2) == result
    end

    test "will round down if midpoint is not a whole number" do
      result = GuessingGame.mid(1, 2)
      assert 1 == result
    end
  end
end
