require 'csv'

CSV.foreach("/users/rmason202/code/csv/bfcategories.csv") do |row|
  uc = UnitCategories.new
  uc.name = row[0]
  uc.save
end