

def robin_while(min, max)
  p "while"
  while min <= max
    puts "#{min}"
    min += 1
  end
end



def robin_times(min, max)
  p "times"
  blah = (max - min) +1
  blah.times do |z|
    p min
    min += 1
  end

end


def robin_each(min, max)
  p "each"
  numbers = Array.new
  for x in min..max
    numbers.push x
  end

  numbers.each do |x|
    puts x
  end
end


def robin_for(min, max)
  p "for loop"
  for  x in min..max
    p x
  end
end


def robin_loops(min, max)
  
  robin_for(min, max)
  robin_each(min,max)
  robin_while(min, max)
  robin_times(min, max)
end

robin_loops(100, 110)

