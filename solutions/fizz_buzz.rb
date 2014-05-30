def fizzbuzz
  (1..100).inject([]) { |result, number| result << number.call_out }
end

class Fixnum
  RULES = {'15' => 'FizzBuzz', '5' => 'Buzz', '3' => 'Fizz'}

  def call_out
    RULES.each do |number, word|
      return word if self.divisible_by(number)
    end

    return self
  end

  def divisible_by(number)
    self % number.to_i == 0
  end
end
