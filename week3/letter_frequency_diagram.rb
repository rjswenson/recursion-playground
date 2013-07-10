
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

end

def make_histogram(word)

end

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
    if test[1].to_a == get_frequencies(test[1].to_a)
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

test_get_frequencies()
test_print_histogram()
