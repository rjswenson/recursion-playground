
def get_factors(num1)      #Grab the factors for a particular number     
  factors = [] 
  for n in 1..num1        
    if num1%n == 0        
      factors.push(n)
    end
  end
  return factors
end

 def sum_of_array(array)   #Add all of the factors together
  sum = 0
  for n in 0..array.size-1
    sum = sum +array[n]
  end
  return sum
end


def perfect_check(num1)   #Divide above number by two, and check against particular number
  factors_arr = get_factors(num1)
  sum_of_factors = sum_of_array(factors_arr)
  if num1 == sum_of_factors/2
    return true
  else
    return false
  end
end



p "Let's find some perfect numbers."
p "First, give me the low number in a range."
input_low = gets.chomp.to_i
p "Next, give a high number for the range."
input_high = gets.chomp.to_i


for x in input_low..input_high
  is_perfect = perfect_check(x)
  if is_perfect == true
    p x 
  end
end



