

#Perfect number finder

puts "Welcome to the perfect number finder!"
puts "Specify the range which you would like to search in."
puts "Your first number? (MUST be greater than 2)"
input_first = gets.to_i

puts "And your second?"
input_last= gets.to_i

factors = Array.new
all_perfects = Array.new

sum = 0

for x in input_first..input_last


	for n in 1..x
		if x%n ==0
			factors.push(n)
		end
	end
end
	for n in 0..factors.size-1
		sum = sum + factors[n]
	end

	if 	x == (sum/2)
		puts "A perfect number: #{x}"
		all_perfects.push(x)
		sum=0
		factors.clear

	else
		sum = 0
		factors.clear
	end



puts "These are the perfect numbers within your range."
puts all_perfects.inspect



