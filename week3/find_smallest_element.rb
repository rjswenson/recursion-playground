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
#def find_smallest(x)
#  x.sort!
#  first = x.at(0)
#  return first
#end
def find_smallest(num_array)
  lowest = num_array[0]
  for i in 0..num_array.length-1
    if num_array[i] < lowest
      lowest = num_array[i]
    end
  end

  return lowest
end



#test_data = []
#test_data.push([[1, 2, 3], 1])
#test_data.push([[7, 6, 2], 2])
#test_data.push([[9, 1, 8, 2, 7, 3, 6, 4, 5], 1])

#test_data.each do |array|
#  puts "expected smallest number #{array[1]} and got #{find_smallest(array[0])} in #{array[0].inspect}"
#end


p "Please input 10 digits, each separated by a comma."
ten_digits = gets.chomp.to_s
ten_digits = ten_digits.split(",")
ten_digits = ten_digits.collect {|dig| dig = dig.to_i}

answer = find_smallest(ten_digits)
p "The lowest of your array #{ten_digits.inspect} is #{answer}."

