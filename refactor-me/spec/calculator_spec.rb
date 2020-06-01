# frozen_string_literal: true

require 'spec_helper'

describe Calculator do
  it 'performs addition with 5 inputs' do
    result = Calculator.new(1, 2, 3, 4, 5)
    expect(result.add).to be 15
  end

  it 'performs addition with 2 inputs' do
    result = Calculator.new(1, 2)
    expect(result.add).to be 3
  end

  it 'performs multiplication with 5 inputs' do
    result = Calculator.new(1, 2, 3, 4, 5)
    expect(result.multiply).to be 120
  end

  it 'performs multiplication with 2 inputs' do
    result = Calculator.new(1, 2)
    expect(result.multiply).to be 2
  end

  it 'performs division with 5 inputs' do
    result = Calculator.new(1, 2, 3, 4, 5)
    expect(result.divide).to be 0.01
  end

  it 'performs division with 2 inputs' do
    result = Calculator.new(10, 5)
    expect(result.divide).to be 2.0
  end

  it 'performs subtraction with 5 inputs' do
    result = Calculator.new(1, 2, 3, 4, 5)
    expect(result.subtract).to be -13
  end

  it 'performs subtraction with 2 inputs' do
    result = Calculator.new(50, 34)
    expect(result.subtract).to be 16
  end
end
