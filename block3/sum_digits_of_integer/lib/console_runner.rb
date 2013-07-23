

#Digit Summing Program

require_relative("./sum_digits_of_integer.rb")

p "The Digit Summing Program!"
p "Enter a whole number please:"

input = gets.chomp

digit_method = sum_digits(input)
string_method = sum_digits(input)

if digit_method == string_method
  p "The sum of digits for your number are: #{digit_method}"
else
  p "Oh no, my program is broken!"
end