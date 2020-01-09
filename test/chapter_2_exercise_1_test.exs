defmodule Chapter2Exercise1Test do
  use ExUnit.Case

  test "sums all elements in list" do
    assert Chapter2.Exercise1.sum([1,2,3]) == 6
  end
end
