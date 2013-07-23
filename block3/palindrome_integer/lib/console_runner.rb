

#Palindrome Checker Program

require_relative("./palindrome_integer.rb")

p "Lets find some Palindromes!"
p "A palindrome is written the same front to back, back to front."
p "****Please input a number!****"

input = gets.chomp
reversed = reverse_number(input)

p "Your number, reversed, is: #{reversed}"

bool = is_palindrome(input)
if bool == true
  p "#{input} is a palindrome!"
else
  p "#{input} is NOT a palindrome."
end
