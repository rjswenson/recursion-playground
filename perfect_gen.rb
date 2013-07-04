

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
=begin 

	for n in 1..x
		if x%n ==0
			factors.push(n)
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

end
=end

def get_factors(s_num)
	x = s_num
	for s_num in 1..x
		if x%s_num ==0
			s_array.push(factors)
		end
	end
end

def sum_contents_of_array(s_array)
	for s_num in 0..s_array.size-1
		sum = sum + s_array[s_num]
	end
end

def is_perfect_number(s_num)
	x = s_num
	if 	x == (sum/2)
		puts "A perfect number: #{x}"
		all_perfects.push(x)
		sum=0
		s_array.clear

	else
		sum = 0
		s_array.clear
	end
end

puts get_factors(input_first)
puts sum_contents_of_array(all_perfects)
puts is_perfect_number(s_num)

end



#puts "These are the perfect numbers within your range."
#puts all_perfects.inspect



