

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

p "How many tickets would they like:"
tix_num = gets.chomp.to_i
manifest = Hash.new(0)
remainder = 0

if tix_num >= 20
  manifest[:group] = tix_num
else
  p "How many children[under 13]:"
  manifest[:child] = gets.chomp.to_i

  p "How many senior citizens[65+]:"
  manifest[:senior] = gets.chomp.to_i

  p "How many students:"
  manifest[:student] = gets.chomp.to_i
  manifest.each {|k , v| remainder = (tix_num -= v)}
  manifest[:general_admission] = remainder
 
  p "That leaves #{manifest[:general_admission]} general admission tickets."
end

isOverLength = false
is3d = false
isLoge = false
isWeekend = false
isThursday = false

p "What is the day, please spell it out[i.e. Monday]:"
day = gets.chomp.to_s.downcase!

if day == "saturday" || day == "sunday"
  isWeekend = true
elsif day == "thursday"
  isThursday = true
end

p "Is this movie in 3D[yes/no]:"
three_d = gets.chomp.to_s.downcase!

if three_d == "yes"
  is3d = true
end

p "Will the guests be sitting on the balcony[yes/no]:"
loge = gets.chomp.to_s.downcase!

if loge == "yes"
  isLoge = true
end

p "What is the run-time in minutes for the film:"
mins = gets.chomp.to_i
if mins > 120
  isOverLength = true
end

invoice = start_purchase(isOverLength, is3d, isLoge, isWeekend)
total = compute_total(invoice, manifest)
if isThursday == true
  total = thurs_adjust(compute_total(invoice, manifest), manifest)
end

puts %Q|\n\nThe total cost is: $#{'%.2f' % total} \n \nfor tickets to: '#{title}'\n\n|


