# frozen_string_literal: true

class StringCalculator

  def add(numbers)
    santized_string = numbers.gsub("\n", ',')
    santized_string.split(',').map(&:to_i).sum
  end
end
