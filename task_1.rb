# frozen_string_literal: true

def hi_by(number)
  (1..number).map do |num|
    if hi?(num) && by?(num)
      'HiBy'
    elsif hi?(num)
      'Hi'
    elsif by?(num)
      'By'
    else
      num
    end
  end
end

def hi?(number)
  (number % 3).zero?
end

def by?(number)
  (number % 5).zero?
end

number = 100
puts hi_by(number)
