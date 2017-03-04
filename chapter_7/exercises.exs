defmodule MyList do
  def fact(0), do: 1
  def fact(n) when n>0, do: n*fact(n-1)
  
  def len([]), do: 0
  def len([_head|tail]), do: 1+len(tail)
  
  def square([]), do: []
  def square([head | tail]), do: [head*head | square(tail)]
  
  def map([], _func), do: []
  def map([head|tail], func), do: [func.(head) | map(tail,func)]
  
  def sum(list), do: sum(list, 0)
  defp sum([], value), do: value
  defp sum([head | tail], value), do: sum(tail, head + value)
  
  def swap([]), do: []
  def swap([a, b | tail]), do: [b,a|swap(tail)]
  def swap([_]), do: raise "Can't swap a list with an odd number of elements"
end