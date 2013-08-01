

def chain_divide (num, terms_count = 1)
  
  return 0 if num == 0 || num == nil
  return terms_count if num == 1
  
  if num % 2 == 0
    num = num/2
    terms_count += 1

  elsif num % 2 == 1
    num = (num * 3)+1
    terms_count += 1   
  end
  chain_divide(num, terms_count)
  
end


def max_chains_range(first, last)
  max_terms = 0
  maxed_num = 0

  for i in first..last
    chain_divide(i)
    if chain_divide(i) > max_terms
      max_terms = chain_divide(i)
      maxed_num = i
    end
  end
  
  return [maxed_num, max_terms]
end

p max_chains_range(1,1000000)