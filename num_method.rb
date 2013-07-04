
def get_factors(num1)           #factors here
  #factors = [] 
  for n in 1..num1
    if num1%n == 0
      factors.push(n)
    end
  end
  p factors.inspect
end

def sum_of_array(array)
  sum = 0
  for n in 0..array.size-1
    sum = sum +array[n]
  end
p sum
end

def perfect_check(num1)
  if num1 == (sum/2)
    puts "#{num1} is a perfect number."
    sum = 0
    factors.clear
  else
    sum = 0
    factors.clear
  end
end





p "What number?"
input = gets.chomp.to_i
get_factors(input)
#sum_of_array(factors) 
perfect_check(input)

