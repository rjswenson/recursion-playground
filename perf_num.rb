
num = 1
diviser = 1

prime = 0
def_prime = num%diviser

loop do
    
	
	if def_prime > 0 && num!=diviser
		diviser +=1
		num = prime
		

	elsif diviser == num-1 && prime ==num

		puts "#{prime}"
	

	else
		num +=1
		div = 2
		prime = 0
	
	end
break if num > 100
end
