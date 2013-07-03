

def misterize(input)
  return "Mister " + input
end

a = misterize("Erin")
b = misterize("Robin")
c = misterize("RuPaul")

p "Check out these misters:"
p a
p b
p c


puts
puts
puts

def add_two_numbers(num1, num2)
  return num1 + num2
end

def divide_two_numbers(num1, num2)
  return num1/num2
end


puts add_two_numbers(divide_two_numbers(10,5),3)

puts
p
p

def divide_stuff(x)
  x/10
end

p divide_stuff(100)


