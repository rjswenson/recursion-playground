
require_relative("./find_smallest_element.rb")

p "Welcome to the Lowest Number Finder!"
p "Please input as many numbers as you'd like, seperated by commas:"

digits = gets.chomp.to_s
digits = digits.split(",")
digits = digits.collect {|str| str = str.to_i}

lowest_num = find_smallest(digits)

p "For the digits: #{digits}"
p "The lowest number is #{lowest_num}"