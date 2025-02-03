# frozen_string_literal: true

class StringCalculator

  def add(numbers)
    delimiter = get_delimiter(numbers.lines.first&.chomp)
    santized_string = numbers.gsub(delimiter, ',')
    santized_string.split(',').map(&:to_i).sum
  end

  def get_delimiter(string)
    return "\n" if string.nil?
    return string[2] if string.start_with?("//")

    "\n"
  end
end
