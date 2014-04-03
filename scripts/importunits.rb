require 'csv'

CSV.foreach("/users/rmason202/code/csv/bfunit.csv") do |row|
  unit = Unit.new
  unit.no = row[0]
  unit.name = row[1]
  unit.element_id = row[2]
  unit.rarity_id = row[3]
  unit.cost = row[4]
  unit.max_lvl = row[5]
  unit.numhits = row[6]
  unit.save
end

