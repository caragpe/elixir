defmodule SumatorioPriv do
  def sum(0), do: 0
  def sum(n), do: sum(n,0)
  # Private functions
  defp sum(0, value), do: value
  defp sum(n, x), do: sum(n-1,  x + n)
end

# Module without private functions!
defmodule Sumatorio do
  def sum(n, b \\ 0)
  def sum(0, b), do: b
  def sum(n, b), do: sum(n-1, b+n)
end

defmodule Gcd do
  def gcd(x,y) when x<=0, do: "Error (x should be positive)"
  def gcd(x,y) when y<0, do: "Error (y should be positive)"
  def gcd(x,y) when y==0, do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

defmodule Chop do
  def guess(value, range) do
    low..top = range
    calculated = div((low + top),2)
    check(value, calculated, low, top)
  end
  def check(value, calculated, low, high) when value > calculated do
    IO.puts "My calculated value is: #{calculated}. Low is: #{low} and Top is: #{high}"
    guess(value, (1 + calculated)..high)
  end
  def check(value, calculated, low, high) when value < calculated do
    IO.puts "My calculated value is: #{calculated}. Low is: #{low} and Top is: #{high}"
    guess(value, low..calculated)
  end
  def check(value, calculated, low, high) when value == calculated, do: "Found! The value is #{value}"
end
