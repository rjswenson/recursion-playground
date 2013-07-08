#######################
### Palindrome integer
###
#
# Write the methods with the following headers
#
# def reverse_number(n)
#   Return the reversal of an integer, i.e., reverse(456) returns 654
# end
#
# def is_palindrome(some_number)
#   returns true if number is a palindrome, false if not
# end
#
# Use the reverse_number method to implement is_palindrome. A number is a
# palindrome if its reversal is the same as itself. Write a test program that
# prompts the user to enter an integer and reports whether the integer is a
# palindrome.
#
# Examples of palindromes:
# 131
# 22422
# 12321
# 66
# 9990999
#
# HINT: it's much easier to reverse an array than a number or a string...



#first, take input, turn to string, array, turn to int.
#flip values w/in array
#next output array as non-array
#then check if original input is = to output, if so, true palendrome
def reverse_number(input)
  input = input.split(//)
  to_integer = input.collect {|letter| letter = letter.to_i}
  reversed = to_integer.reverse
  reversed = reversed.join.to_i
  return reversed
end

def is_palindrome(x)
  input = x.to_i
  check = reverse_number(x)
  if check == input
    return true
  else
    return false
  end
end



p "Input an integer to be reversed."
input = gets.chomp.to_s
answer = reverse_number(input)
p "Your number is now: #{answer}"
bool = is_palindrome(input)
if bool == true
  p "#{input} is a palindrome."
else
  p "#{input} is not a palindrome."
end



