
require_relative("./creditcard_validator.rb")

#Credit Card Validator

p "This program checks credit card numbers for validity."
p "Please insert the card number to check, no spaces or dashes:"

card_number  = gets.chomp

card_valid = is_valid(card_number)

if card_valid == false
  p "The card number [#{card_number}] is invalid."
else
  p "The card number [#{card_number}] is valid!"
end


