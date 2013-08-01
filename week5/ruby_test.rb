def silly_sum(numbers)
  total = 0

  for x in 0..numbers.length-1
    total += x * numbers[x]
  end
  
  return total
end


def num_squares(max)
  sqrt = Math.sqrt(max-1)
  sqrt.to_i
  perfect_squares = []
  
  for x in 1..sqrt
    perfect_squares.push x * x
  end

  return perfect_squares.length
end


def silly_nums(max)
  approved_nums = []
  
  for x in 1..max-1
    is_divisble_by_three = x % 3 == 0
    is_divisible_by_five = x % 5 == 0

    if is_divisble_by_three || is_divisible_by_five
      unless is_divisble_by_three && is_divisible_by_five
        approved_nums.push x
      end
    end 
  end

  return approved_nums  
end








