defmodule Chapter2Exercise1Test do
  use ExUnit.Case

  test "sums all elements in list" do
    assert Chapter2.Exercise1.sum([1,2,3]) == 6
  end

  test "empty list will be 0" do
    assert Chapter2.Exercise1.sum([]) == 0
  end

  test "simple element list will be the same" do
    assert Chapter2.Exercise1.sum([5]) == 5
  end
end
