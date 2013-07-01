

#Perfect number finder


#input a number, then divide by a divisor.  If number is integer, then
#save that number to an array

#divisor = 1
#factor = 0
#sum = 0 

puts "Welcome to the perfect number finder!"
puts "Specify the range which you would like to search in."
puts "Your first number? (MUST be greater than 2)"
input_first = gets.to_i

puts "And your second?"
input_last= gets.to_i

factors = Array.new
#num_array = Array.new

sum=0
for n in 1..input_first
	if input_first%n ==0
		factors.push(n)
	end
end

for n in 0..factors.size-1
	sum = sum + factors[n]
end

if input_first == (sum/2)
	puts "A perfect number: #{input_first}"
end









=begin

if divisor < input_first
	factor = divisor  #error here, says cannot devise by 0..
	if input_first%divisor == 0
		factors.push factor
		divisor +=1
	else 
		divisor +=1
	end

=end




=begin
elsif divisor == input_first-1
	divs.inject {|sum,x| sum + x}
		if divs == input_first
			num_array.push input_first
			divisor = 2
			input_first+=1
		else
			divisor = 2
			input_first +=1
		end
elsif input_first == input_last
	puts "#{num_array}"

else
	puts "failed."
end

=end


