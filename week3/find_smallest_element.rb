# (Find the smallest element)
# Write a method that finds the smallest element in an array of double values
# using the following header:
#
# def find_smallest(some_array)
#
# Write a test program that prompts the user to enter ten numbers, invokes this
# method to return the minimum value, and displays the minimum value. I have
# included some tests to illustrate the desired functionality:
#
#

test_data = []
test_data.push([[1, 2, 3], 1])
test_data.push([[7, 6, 2], 2])
test_data.push([[9, 1, 8, 2, 7, 3, 6, 4, 5], 1])

test_data.each do |array|
  puts "expected smallest number #{array[1]} and got #{find_smallest(array[0])} in #{array[0].inspect}"
end
