

def get_factors(num1)
  factors = []            #factors here
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






p "What number?"
input = gets.chomp.to_i
get_factors(input)
sum_of_array(factors)   #calling method w/factors array

