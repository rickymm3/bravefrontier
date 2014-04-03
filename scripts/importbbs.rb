require 'csv'

CSV.foreach("/users/rmason202/code/csv/bfunit.csv") do |row|
  bb = BraveBurst.new
  bb.name = row[11]
  bb.element_id = row[2]
  bb.num_hits = row[7]
  unless BraveBurst.exists?(name:bb.name)
    bb.save
  end
end