require 'csv'

CSV.foreach("/users/rmason202/code/csv/bfunit.csv") do |row|
  unit = Unit.find_by_no(row[0])
  if unit
    unit.base_hp = row[13]
    unit.base_atk = row[14]
    unit.base_def = row[15]
    unit.base_rec = row[16]
    unit.max_hp = row[17]
    unit.max_atk = row[18]
    unit.max_def = row[19]
    unit.max_rec = row[20]

    unit.a_hp = row[21]
    unit.a_rec = row[22]
    unit.o_hp = row[27]
    unit.o_rec = row[28]

    unit.b_atk = row[23]
    unit.b_def = row[24]
    unit.g_atk = row[25]
    unit.g_def = row[26]

    unit.description = row[29]

    unit.save
  end

end


  #add_column :units, :max_hp, :integer
  #add_column :units, :max_atk, :integer
  #add_column :units, :max_def, :integer
  #add_column :units, :max_rec, :integer
  #
  #add_column :units, :a_hp, :integer
  #add_column :units, :a_rec, :integer
  #
  #add_column :units, :b_atk, :integer
  #add_column :units, :b_def, :integer
  #
  #add_column :units, :g_atk, :integer
  #add_column :units, :g_def, :integer
  #
  #add_column :units, :o_hp, :integer
  #add_column :units, :o_rec, :integer