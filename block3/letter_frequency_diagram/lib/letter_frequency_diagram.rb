
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
  return letter_hash
  
end



