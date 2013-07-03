

dingle = 100

while dingle > 10  #example of inf. loop
  p dingle
  dingle +=1
  if dingle >= 110 #add if w/ break to stop it
    break
  end
end


x = [1,5,10,11,2,99,100,105]
entries_divisible_by_five = x.count do |n|
  n%5 == 0
end
p "The number of divisors by 5 are:"
p entries_divisible_by_five


