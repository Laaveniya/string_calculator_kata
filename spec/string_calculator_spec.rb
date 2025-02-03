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
  end
end
