

def find_evens(arr, even_nums = [])
  #if index0 %2 == 0, push to the back of array
  #if not, chop it off
  if arr == []
    return even_nums
  end

  even_nums.push(arr[0]) if arr[0] != nil && arr[0] % 2 == 0 
  arr.shift
  find_evens(arr, even_nums)

end