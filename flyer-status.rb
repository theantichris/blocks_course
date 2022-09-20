class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status = :bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts "\nFrequent Flyers:"
frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
puts frequent_flyers

puts "\nInfrequent Flyers:"
infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
puts infrequent_flyers

puts "\nHas Platinum Flyers:"
puts flyers.any? { |flyer| flyer.status == :platinum }

puts "\nHas Bronze Flyers"
puts flyers.detect { |flyer| flyer.status == :bronze }

platinum_flyers, coach_flyers = flyers.partition { |flyer| flyer.status == :platinum }

puts "\nPlatinum Flyers:"
puts platinum_flyers

puts "\nCoach Flyers:"
puts coach_flyers

puts "\nName Tags:"
name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})"}
puts name_tags

puts "\nKilometers:"
km = flyers.map { |flyer| flyer.miles_flown * 1.6 }
p km

puts "\nTotal Miles:"
total_miles = flyers.reduce(0) { |total, flyer| total + flyer.miles_flown }
puts total_miles

puts "\nTotal Kilometers:"
total_km = km.reduce(:+)
puts total_km

puts "\nTotal KM Flown By Bronze Flyers:"
total_km_bronze = flyers.select { |flyer| flyer.status == :bronze }.map{ |flyer| flyer.miles_flown * 1.6 }.reduce(:+)
p total_km_bronze
