

#Letter Frequency Diagram

require_relative("./letter_frequency_diagram.rb")

p "Welcome to the Starry Letter Diagram Builder!"
p "Input any single word for us to diagram:"
word = gets.chomp.downcase
star_hash = make_histogram(word)

p "***-*STAR*DIAGRAM*-***"
p "for [#{word}]"

star_hash.each do |k, v|
  p "#{k}: #{v}"
end

