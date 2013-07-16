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

def find_smallest(num_array)
  lowest = num_array[0]
  for i in 0..num_array.length-1
    if num_array[i] < lowest
      lowest = num_array[i]
    end
  end

  return lowest
end

