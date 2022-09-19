scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores.select! { |score| score > 70 }
scores.reject! { |score| score.even? }
p scores
