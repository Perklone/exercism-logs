defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    ((100-discount)/100) * before_discount
  end

  def monthly_rate(hourly_rate, discount) do
    daily_price = daily_rate(hourly_rate)
    monthly_price = daily_price * 22
    total = apply_discount(monthly_price, discount)
    ceil(total)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_price = daily_rate(hourly_rate)
    total_price = apply_discount(daily_price, discount)
    total_days = budget / total_price
    Float.floor(total_days,1)
  end
end
