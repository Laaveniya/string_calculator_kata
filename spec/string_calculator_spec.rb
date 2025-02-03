# frozen_string_literal: true
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns 1  for string 1' do
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum when two numbers are given separated by comma' do
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum when three numbers are given separated by comma' do
      expect(calculator.add("1,5,3")).to eq(9)
    end

    context 'when numbers are given separated by different seperators' do
      it 'returns the sum with comma and newline character' do
        expect(calculator.add("1\n5,3")).to eq(9)
      end
    end

    context 'when a custom delimiter is given at the beginning of the string i.e. "//[delimiter]\n[numbers…]"' do
      it 'returns the exact sum' do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when a negative number is given' do
      it 'raises an exception with the negative number' do
        expect { subject.add("//;\n1;-2") }.to raise_error(RuntimeError, "negatives not allowed: -2")
      end
    end
  end
end
