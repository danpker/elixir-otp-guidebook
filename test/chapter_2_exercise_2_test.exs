defmodule Chapter2Exercise2Test do
  use ExUnit.Case

  test "Enum.map" do
    assert Enum.map([1, 2, 3], fn x -> x * 2 end) == [2, 4, 6]
  end

  test "Enum.reverse" do
    assert Enum.reverse([1, 2, 3]) == [3, 2, 1]
  end

  test "Enum.all?/1" do
    assert Enum.all?([true, true, true]) == true
    assert Enum.all?([true, false, true]) == false
  end

  test "Enum.all?/2" do
    assert Enum.all?([1, 2, 3], &is_number/1) == true
    assert Enum.all?([1, :two, 3], &is_number/1) == false
  end

  test "Enum.any?/1" do
    assert Enum.any?([false, true, false]) == true
    assert Enum.any?([false, false, false]) == false
  end

  test "Enum.any?/2" do
    assert Enum.any?([:one, 2, :three], &is_number/1) == true
    assert Enum.any?([:one, :two, :three], &is_number/1) == false
  end

  test "Enum.at/2" do
    assert Enum.at([1, 2, 3], 1) == 2
    assert Enum.at([1, 2, 3], -1) == 3
  end

  test "Enum.at/3" do
    assert Enum.at([1, 2, 3], 4, :none) == :none
  end

  test "Enum.chunk_by/2" do
    assert Enum.chunk_by([1, 2, :one, :two, 3, 4], &is_number/1) == [
             [1, 2],
             [:one, :two],
             [3, 4]
           ]
  end

  test "Enum.chunk_every/2" do
    assert Enum.chunk_every([1, 2, 3, 4, 5, 6], 2) == [[1, 2], [3, 4], [5, 6]]
  end

  test "Enum.chunk_every/3" do
    assert Enum.chunk_every([1, 2, 3, 4, 5, 6, 7], 3, 2) == [[1, 2, 3], [3, 4, 5], [5, 6, 7], [7]]
  end

  test "Enum.chunk_every/4" do
    assert Enum.chunk_every([1, 2, 3, 4, 5, 6, 7], 3, 2, :discard) == [
             [1, 2, 3],
             [3, 4, 5],
             [5, 6, 7]
           ]
  end

  # chunk_while

  test "Enum.concat/1" do
    assert Enum.concat([[1, 2, 3], [4, 5, 6]]) == [1, 2, 3, 4, 5, 6]
  end

  test "Enum.concat/2" do
    assert Enum.concat([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
  end

  test "Enum.count/1" do
    assert Enum.count([1, 2, 3]) == 3
  end

  test "Enum.count/2" do
    assert Enum.count([1, 2, 3, :four], &is_number/1) == 3
  end

  test "Enum.dedup/1" do
    assert Enum.dedup([1, 1, 2, 3, 3]) == [1, 2, 3]
  end
end
