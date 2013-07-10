
# Note:  Cards are 13-16 digits.  Cards start with 4, 5, 6, or 37 depending on the company
#step 1 : Double every 2nd digit, starting right to left.  If value > 9, add two digits together (6*6 = 12, 1+2 = 3)
#step 2 : Add the odd digits
#step 3 : Add step 1 and 2, if that number is divisible by 10, has the right prefix, is the right length

def sum_of_even_digits(n)   #adds every even digit
  n = n.to_s.split(//)
  reverse_cc = n.reverse.values_at(1,3,5,7,9,11,13,15).compact
  sum_evens = 0

  # for x in 0..reverse_cc.length-1
  #   doubled = reverse_cc[x].to_i * 2
  #   sum_evens += get_digit(doubled)
  # end 

  reverse_cc.each do |cc_number|
    doubled = cc_number.to_i * 2
    sum_evens += get_digit(doubled)
  end
  return sum_evens


  # double_cc = reverse_cc.collect {|num| num = (num.to_i)*2}  
  # sum_evens = 0
  # double_cc.collect {|val| sum_evens += get_digit(val)}
  # return sum_evens
end

def sum_of_odd_digits(n)  #adds every odd digit
  n = n.to_s.split(//)
  reverse_cc = n.reverse.values_at(0,2,4,6,8,10,12,14,16).compact
  sum_odds = 0
  reverse_cc.each do |cc_num|
    sum_odds = cc_num.to_i + sum_odds
  end
  return sum_odds

  #reverse_cc = reverse_cc.collect{|num| num = num.to_i}
  #sum_odds = 0
  #reverse_cc.collect{|odd| sum_odds = sum_odds + odd}
  #return sum_odds
end

def get_digit(n)  #Gets proper digit for sum of evens
  if n <= 9
    return n
  else
    n = n.to_s.split(//)
    digit= 0
    n.collect! {|str| str.to_i}
    n.each {|val| digit = digit + val}
    return digit
  end
end

def get_prefix(n)  #gets the prefix/first digit of card
  digits = n.to_s.split(//)
  digits.collect {|st| st.to_i}
  prefix = digits.fetch(0)
  if prefix == "3"
    prefix = prefix + digits.fetch(1)
  end
  prefix = prefix.to_i
  return prefix
end

def prefix_matched(n)
  n = get_prefix(n)
  if n == 37 || n == 4 || n == 5 || n == 6
    return true
  else
    return false
  end
end

def num_digits(n)
  digits = n.to_s.split(//)
  if digits.count > 12 && digits.count < 17
    return true
  else
    return false
  end
end


def is_valid(n)
  if num_digits(n) == false
    return false
  end
  if prefix_matched(n) == false
    return false
  end
  evens = sum_of_even_digits(n)
  odds = sum_of_odd_digits(n)
  sum = evens + odds
  return sum%10 == 0
end

test_arr = []
test_arr.push([4388576018402626 , false])
test_arr.push([4388576018410707 , true])
test_arr.push([371449635398431 , true])
test_arr.push([378282246310005 , true])
test_arr.push([6011016011016011 , true])
test_arr.push([5454545454545454 , true])
test_arr.push([5111005111051128 , true])

test_arr.each do|i| 
  p "Number #{i[0]} expects #{i[1]} returns #{is_valid(i[0])}"

end




