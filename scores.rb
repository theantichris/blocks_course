scores = [83, 71, 92, 64, 98, 87, 75, 69]

puts "Odd scores over 70:"
overSeventy = scores.select { |score| score > 70 }
oddsOverSeventy = overSeventy.reject { |score| score.even? }
p oddsOverSeventy

puts "\nScores doubled:"
scores_doubled = scores.map { |score| score *2 }
p scores_doubled

puts "\nSum:"
sum = scores.reduce(:+)
p sum

puts "\nEvens and odds"
evens, odds = scores.partition { |score| score.even? }
p evens
p odds
