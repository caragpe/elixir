defmodule MyList do
  def square([]), do: []
  def square([ head | tail ]), do: [ head*head | square(tail)]

  def map([],_func), do: []
  def map([head | tail], func), do: [ func.(head) | map(tail, func)]

  def sum(list), do: _sum(list,0)
  # private methods
  defp _sum([],total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head+total)

  def reduce([], value, _), do: value
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)
end
