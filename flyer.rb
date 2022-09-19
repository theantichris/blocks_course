class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
1.upto(5) do |c|
  flyers << Flyer.new("Flyer #{c}", "flyer#{c}@example.com", c * 1000)
end

flyers.each { |flyer| puts "#{flyer.name} - #{flyer.miles_flown} miles"}

total_miles_flown = 0
flyers.each { |flyer| total_miles_flown += flyer.miles_flown }
puts "\nTotal miles flown: #{total_miles_flown}\n\n"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
promotions.each { |airline, bonus| puts "Earn #{bonus}x miles by flying #{airline.capitalize}!"}
