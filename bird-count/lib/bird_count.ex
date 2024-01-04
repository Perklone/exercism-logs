defmodule BirdCount do
  def today([]), do: nil

  def today([head | _]) do
    head
  end

  def increment_day_count([]), do: [1]

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?(list), do: hd(list) == 0 or has_day_without_birds?(tl(list))

  def total([head | tail]), do: head + total(tail)

  def total([]), do: 0

  def busy_days([]), do: 0

  def busy_days([head | tail]) do
    if head >= 5 do
      1 + busy_days(tail)
    else
      busy_days(tail)
    end
  end
end
