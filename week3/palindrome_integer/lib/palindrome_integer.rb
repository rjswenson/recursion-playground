

#first, take input, turn to string, array, turn to int.
#flip values w/in array
#next output array as non-array
#then check if original input is = to output, if so, true palendrome

def reverse_number(input)
  input = input.to_s.split(//)
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





