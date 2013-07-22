

def start_purchase(isOverLength = false, 
                   is3d = false,
                   isLoge = false,
                   day = "s")
  
  invoice = Hash.new
  invoice[:total] = 0
  invoice[:isOverLength] = isOverLength
  invoice[:is3d] = is3d
  invoice[:isLoge] = isLoge
  invoice[:day] = day
  
  return invoice
end

def compute_total(invoice)
  total = 0
  num_tix = 0
  ticket_types = [:general_admission, :student, :senior, :child]

  
  for x in 0..ticket_types.length-1
    num_tix += invoice[ticket_types[x]].to_i
  end

  if num_tix >= 20
    total = (num_tix * 600)
  else
    total += invoice[:general_admission] * 1100
    total += invoice[:student] * 800
    total += invoice[:senior] * 600
    total += invoice[:child] * 550
  end
  if invoice[:is3d] == true
    total += num_tix * 300
  end
  if invoice[:isOverLength] == true
    total += num_tix * 150
  end
  if invoice[:isLoge] == true
    total += num_tix * 200
  end

  if invoice[:day] == "saturday" || invoice[:day] == "sunday"
    total += num_tix * 150
  elsif invoice[:day] == "thursday" && num_tix < 20
    total += num_tix * -200
  end
    
  

  return total
end


