

def start_purchase(isOverLength = false, 
                   is3d = false,
                   isLoge = false,
                   isWeekend = false)
  
  invoice = Hash.new
  invoice[:total] = 0
  invoice[:isOverLength] = isOverLength
  invoice[:is3d] = is3d
  invoice[:isLoge] = isLoge
  invoice[:isWeekend] = isWeekend
  
  return invoice
end

def compute_total(invoice, manifest)
  total = 0
  
  total += manifest[:group] * 600
  total += manifest[:general_admission] * 1100
  total += manifest[:student] * 800
  total += manifest[:senior] * 600
  total += manifest[:child] * 550
    
  manifest.each do | type, amount |
    if invoice[:is3d] == true
      total += manifest[type] * 300
    end
    if invoice[:isOverLength] == true
      total += manifest[type] * 150
    end
    if invoice[:isLoge] == true
      total += manifest[type] * 200
    end
    if invoice[:isWeekend] == true
      total += manifest[type] * 150
    end
  end

  return total
end

def thurs_adjust(compute_total, manifest)
  total = compute_total

  if manifest.has_key?(:group) == true
   return total
  else
    manifest.each {|k, v| total += (v * -200)}
  end
  return total
end






