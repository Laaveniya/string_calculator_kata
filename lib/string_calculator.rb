# frozen_string_literal: true

class StringCalculator

  def add(numbers)
    delimiter = get_delimiter(numbers.lines.first&.chomp)
    santized_string = numbers.gsub(delimiter, ',')
    sum = 0
    negative_numbers = []
    santized_string.split(',').each do |number|
      sum += number.to_i if number.to_i.positive?
      negative_numbers << number if number.to_i.negative?
    end
    raise "negatives not allowed: #{negative_numbers.join(',')}" if negative_numbers.any?

    sum
  end

  private

  def get_delimiter(string)
    return "\n" if string.nil?
    return string[2] if string.start_with?("//")

    "\n"
  end
end
