defmodule Practicing do
  def list_len([]), do: 0
  def list_len([_ | tail]) do
    1 + list_len(tail)
  end

  def range(from, to) when to < from, do: range(to, from)
  def range(from, to), do: range([], from, to)

  defp range(accumulator, from, to) do
    case from <= to do
      false -> accumulator
      true -> range([to | accumulator], from, to - 1)
    end
  end

  def positive(list) do
    positive([], list)
  end

  defp positive(accumulator, []), do: accumulator
  defp positive(accumulator, [head | tail]) do
    case head > 0 do
      true -> positive([head | accumulator], tail)
      _ -> positive(accumulator, tail)  
    end
  end
end
