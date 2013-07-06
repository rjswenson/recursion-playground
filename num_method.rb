
def get_factors(num1)           #factors here
  factors = [] 
  for n in 1..num1
    if num1%n == 0
      factors.push(n)
    end
  end
  p factors.inspect
  return factors
end

 def sum_of_array(array)
  $sum = 0
  for n in 0..array.size-1
    $sum = $sum +array[n]
  end
return $sum
end

def perfect_check(num1)
  if num1 == ($sum/2)
    puts "#{num1} is a perfect number."
    $sum = 0
    $factors.clear
  else
    $sum = 0
    $factors.clear
  end
end


p "Let's find some perfect numbers."
p "First, give me the low number in a range."
input_low = gets.chomp.to_i
p "Next, give a high number for the range."
input_hight = gets.chomp.to_i


for x in input_low..input high
  get_factors(x)
  sum_of_array($factors)
  perfect_check(x)
end

