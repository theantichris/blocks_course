desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

desserts.each { |dessert, price| puts "$#{price * 2} for a cup of #{dessert}."}
