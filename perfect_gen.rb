

#Perfect number finder

divisor = 1
answer = 0
sum = 0 

puts "Welcome to the perfect number finder!"
puts "Specify the range which you would like to search in."
puts "Your first number? (MUST be greater than 2)"
num = gets.to_i

puts "And your second?"
fin_num = gets.to_i

divs = Array.new
num_array = Array.new


if divisor < num
	num/divisor = answer  #error here, says cannot devise by 0..
	if num%divisor == 0
		divs.push answer
		divisor +=1
	else 
		divisor +=1
	end

elsif divisor == num-1
	divs.inject {|sum,x| sum + x}
		if divs == num
			num_array.push num
			divisor = 2
			num+=1
		else
			divisor = 2
			num +=1
		end
elsif num == fin_num
	puts "#{num_array}"

else
	puts "failed."
end


