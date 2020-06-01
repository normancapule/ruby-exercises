# frozen_string_literal: true

class Calculator
  def initialize(number1, number2, number3, number4, number5)
    @@number1 = number1
    @@number2 = number2
    @@number3 = number3
    @@number4 = number4
    @@number5 = number5
  end

  def add
    @@result = @@number1 + @@number2 + @@number3 + @@number4 + @@number5
    @@result
  end

  def multiply
    @@result = @@number1 + @@number2 + @@number3 + @@number4 + @@number5
    @@result
  end

  def subtract
    @@result = @@number1 - @@number2 - @@number3 - @@number4 - @@number5
    @@result
  end

  def divide
    @@result = @@number1 / @@number2 / @@number3 / @@number4 / @@number5
    @@result
  end
end
