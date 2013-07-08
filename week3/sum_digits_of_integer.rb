################################
### Sum the digits in an integer
###
#
# Write a method that computes the sum of the digits in an integer.
#
# Use the following method signature:
#
# def sum_digits(n)
#
# end
#
# For example, sum_digits(234) returns 9 (2 + 3 + 4).
#
# (Hint: Use the % operator to extract digits, and the / operato to remove the
# extracted digit. For instance, to extract 4 from 234, use 234 % 10 (= 4). To
# remove 4 from 234, use 234 / 10 (= 23). Use a loop to repeatedly extract and
# remove the digit until all the digits are extracted.
#
# Write a test program that prompts the user to enter an integer and displays
# the sum of all its digits.


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

check = gets.chomp
answer = sum_digits(check)
p "The sum of digits for your number are: #{answer}"


def sum_string(n)    #String Method
  number = 0
  num = n.split(//)
  to_int = num.collect {|i| i.to_i}
  string_add = to_int.each {|i| number = number + i}
  return number
end

input = gets.chomp.to_s
solution = sum_string(input)
p "The sum of digits for your number are: #{solution}"


  