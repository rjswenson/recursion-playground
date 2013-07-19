

#Movie Ticket Price Computer#


# 1. ask what movie
# 2. ask num tickets
# => a. if + 20 cont
# => b. if less, ask about students/elderly/etc, into hash
# 3. ask for date
# 4. start_purchase
# 5. compute_total
# 6. thursday_adjust
# 7. output movie name and cost
require_relative("./movie_ticket.rb")

p "**********************Jenky-POS-Systems**********************"
p "Welcome, lowly employee!"

p "What movie would the guest(s) like to see:"
title = gets.chomp.to_s

manifest = Hash.new(0)

p "How many children[under 13]:"
manifest[:child] = gets.chomp.to_i

p "How many senior citizens[65+]:"
manifest[:senior] = gets.chomp.to_i

p "How many students:"
manifest[:student] = gets.chomp.to_i

p "How many general admission tickets:"
manifest[:general_admission] = gets.chomp.to_i
 
isOverLength = false
is3d = false
isLoge = false
day = "s"


p "What is the day, please spell it out[i.e. Monday]:"
day = gets.chomp.to_s.downcase

p "Is this movie in 3D[yes/no]:"
three_d = gets.chomp.to_s.downcase

if three_d == "yes"
  is3d = true
end

p "Will the guests be sitting on the balcony[yes/no]:"
loge = gets.chomp.to_s.downcase

if loge == "yes"
  isLoge = true
end

p "What is the run-time in minutes for the film:"
mins = gets.chomp.to_i
if mins > 120
  isOverLength = true
end

invoice = start_purchase(isOverLength, is3d, isLoge, day)
total = compute_total(invoice, manifest)


puts %Q|\n\nThe total cost is: $#{'%.2f' % (total/100)} \n \nfor tickets to: '#{title}'\n\n|


