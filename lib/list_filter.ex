defmodule ListFilter do
  def call(list), do: list_filter(list)

  def list_filter(list) do
    Enum.filter(list, &evaluate_number/1)
  end

  def evaluate_number(number) do
    if is_number(number) do
      rem(number, 3) == 0
    end
  end
end
