

#first, count the digits in the input.  For each digit, modulo
#the input by 10^n where n is each number of digits.  ie.
# if 234 has 3 digits, 234%10^1, 234%10^2, 234%
#

def sum_digits(n)    #Algebraeic Method
  num_of_digits = n.to_s.length
  sum = 0
  n = n.to_i
  for x in 1..num_of_digits
    sum += ((n%(10**x))-(n%10**(x-1)))/(10**(x-1))
  end
  return sum
end


def sum_string(n)    #String Method
  number = 0
  num = n.to_s.split(//)
  to_int = num.collect {|i| i.to_i}
  string_add = to_int.each {|i| number = number + i}
  return number
end



  