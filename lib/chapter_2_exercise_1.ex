defmodule Chapter2.Exercise1 do
  def sum([]) do
    0
  end

  def sum([ head | tail ]) do
    head + sum(tail)
  end

  def sum(head) do
    head
  end
end
