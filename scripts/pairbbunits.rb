require 'csv'

CSV.foreach("/users/rmason202/code/csv/bfunit.csv") do |row|
  xno = row[0]
  xbb = row[11]
  unit = Unit.where(no:xno).first
  bb = BraveBurst.where(name:xbb).first
  if bb && unit
    unit.bb_id = bb.id
    unit.save
  end
end