



def largest_int(arr)
  return arr[0] if arr.length == 1 || arr.length == 0

  if arr[0] < arr[1]
    arr.shift
  else arr.slice!(1)
  end
  largest_int(arr)
end
