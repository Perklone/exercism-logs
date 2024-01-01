defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    unit = elem(volume_pair, 0)
    size = elem(volume_pair, 1)

    milliliter = :milliliter
    cond do
      unit == :cup -> {milliliter, size * 240}
      unit == :fluid_ounce -> {milliliter, size * 30}
      unit == :teaspoon -> {milliliter, size * 5}
      unit == :tablespoon -> {milliliter, size * 15}
      unit == :milliliter -> {milliliter, size * 1}
    end
  end

  def from_milliliter(volume_pair, unit) do
    size = elem(volume_pair, 1)

    cond do
      unit == :cup -> {unit, size / 240}
      unit == :fluid_ounce -> {unit, size / 30}
      unit == :teaspoon -> {unit, size / 5}
      unit == :tablespoon -> {unit, size / 15}
      unit == :milliliter -> {unit, size / 1}
    end
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair) |> from_milliliter(unit)
  end
end
