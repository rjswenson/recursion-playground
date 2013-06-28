


def_prime = num%diviser

num = 1
diviser = 2

possible = 0


50.times do
	
	
if def_prime > 0 && num!=diviser

	num = possible
	diviser +=1

elsif diviser >= num-1 && possible ==num

	puts "#{possible}"
	

elsif def_prime == 0
	num +=1


else


break

end
