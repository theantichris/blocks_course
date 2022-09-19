cards = %w[Jack Queen King Ace Joker]
cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }

scores = { "larry" => 10, "moe" => 8, "curly" => 12 }
scores.each { |name, score| puts "#{name.capitalize} scored a #{score}!"}
