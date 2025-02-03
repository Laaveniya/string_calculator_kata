# frozen_string_literal: true
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end

    it 'returns 1  for string 1' do
      expect(StringCalculator.new.add('1')).to eq(1)
    end

    it 'returns the sum when two numbers are given separated by comma' do
      expect(StringCalculator.new.add("1,5")).to eq(6)
    end
  end
end
