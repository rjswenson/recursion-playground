

#Erin approach
#a perfect number 
divisor = 2
answer = 0
sum = 0 

puts "Welcome to the perfect number finder!"
puts "Specify the range which you would like to search in."
puts "Your first number?"
num = gets.chomp

puts "And your second?"
fin_num = gets.chomp

divs = Array.new
num_array = Array.new


if divisor < num
	num/divisor = answer
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


