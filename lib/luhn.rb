module Luhn
  def self.is_valid?(number)
    array = []
    number.to_s.each_char do |n|
      array << n.to_i
    end
    array.reverse!
    (1...array.length).step(2).each do |num|
      array[num] = array[num] * 2
      if array[num] > 9
        array[num] = array[num] - 9
      end
    end
    array.reverse!
    sum = 0
    array.each do |num|
      sum = sum + num
    end
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
