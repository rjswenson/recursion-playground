
num = 3
diviser = 2

prime = 0  
def_prime = num%diviser  

loop do
    
	
	if def_prime > 0 && num>diviser  
		diviser +=1
		num = prime #to add num as prime candidate
		

	elsif diviser == num-1 && prime ==num 

		puts "#{prime}"
	

	else            #if num%diviser is 0, def_prime isn't prime
		num +=1
		div = 2
		prime = 0	#reset prime value
	
	end
break if num > 100	#arbitrary until I figure how to loop correctly
end




=begin

pri_seg = (2**prime)-10 	#must also be prime
true_seg = 0				#placeholder to put pri seg w/in

perfect_num = 2**(prime-1)(pri_seg)

if pri_seg%diviser > 0 && pri_seg > deviser -1
	deviser+=1
	pri_seg = true_seg

elsif pri_seg%diviser > 0 &&  diviser == pri_seg -1 && pri_seg == true_seg
	puts "#{perfect_num"}

else  #ie if pri_seg%diviser returns 0
	pri_seg = #next prime in array, however I do that
	true_seg = 0
end

=end





