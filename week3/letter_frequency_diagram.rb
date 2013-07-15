
# (Printing a letter-frequency histogram)
#
# Write a program that given a word will print out a horizontal histogram
# representing the frequency of ocurrence for each letter in the word.
#
# For example, the word "hippopotamus" should yield a histogram that looks like:
#
# a: *
# h: *
# i: *
# o: **
# p: ***
# s: *
# t: *
#
# ... where asterisks represent the number of ocurrences of a single character
# in the word.
#
# I have written some tests below that are (currently) failing. Implement the
# following methods and get them passing! This "test-first" approach is called
# "TDD" or "Test-Driven Development".
#
# NOTE: the \n character sequence means "new line"
# NOTE: {} is a "Hash" - a new type of data structure




def get_frequencies(word)   
  array = word.split(//)      #take input, split to letters
  freq = Hash.new             
  for i in 0..array.length-1  #counts each letter, adding to array[1]
    if freq[array[i]] == nil
      freq[array[i]] = 1
    else
      freq[array[i]] = freq[array[i]] +1
    end
  end
    return freq  #hash containing key "letter" value "number"
end

def make_histogram(word)        #takes hash and star-a-fies it
  histo_arr = get_frequencies(word).to_a
  star_count = 0                #star tally
  histo_arr.each do |i|
    while i[1] > star_count     #adds one "*" to i[2]
        star_count +=1
        if star_count > 1
          i[2] += "*"
        else
          i[2] = "*"      #can't add to nil [2], creates i[2]
        end
    end
    star_count = 0
    i.delete_at(1)        #deletes count in array
  end
 
  letter_hash = Hash[*histo_arr.flatten]  #converts arr to hash
  letter_hash.each do |k , v|     #outputs key(letter) and val(*'s)
    p "#{k}: #{v}"
  end
end


p "Welcome to the 'Letter Frequency Diagram Maker'"
p "Input a word, so we can create our diagram."
word = gets.chomp.downcase
make_histogram(word)





###############################################################################
# TEST CODE BELOW
#################
#

def test_get_frequencies
  tests = []
  tests.push(["foobar", {
    "a" => 1,
    "b" => 1,
    "f" => 1,
    "o" => 2,
    "r" => 1
  }])
  tests.push(["cat", {
    "a" => 1,
    "c" => 1,
    "t" => 1
  }])

  tests.each do |test|
    puts "\ngetting frequencies for #{test[0]}..."
    if test[1] == get_frequencies(test[0])
      p get_frequencies(test[0])
      puts "good to go!"
    else
      puts "failed! expected #{test[1]} and got #{get_frequencies(test[0])}"
    end
  end
end

def test_print_histogram
  freq = {
    "b" => 1,
    "o" => 2,
    "s" => 1,
    "t" => 1
  } # the word is "boots"

  h_str = make_histogram(freq)

  expected_output = "b: *\no: **\nt: *\ns: *"

  puts "\nprinting histogram for #{freq}..."
  if h_str == expected_output
    puts "good to go!"
  else
    puts "failed! expected:\n\n#{expected_output}\n\nand got:\n\n#{h_str}"
  end
end

#test_get_frequencies()
#test_print_histogram()