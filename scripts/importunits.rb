require 'csv'


def get_element_id(element)
  if element == 'Fire'
    1
  elsif element == 'Water'
    2
  elsif element == 'Light'
    3
  elsif element == 'Dark'
    4
  elsif element == 'Thunder'
    5
  elsif element == 'Earth'
    6
  else element == 'multi'
  7
  end
end

def cost(rarity_id)
  if rarity_id == 3
    40
  elsif rarity_id == 4
    60
  elsif rarity_id == 5
    80
  end
end

CSV.foreach("/Users/rmason202/Code/brfr/scripts/csv/bfunitsall.csv") do |row|
  unit = Unit.where(
      no: row[0]).first_or_create
  row[9] = row[9].to_i
  row[10] = row[10].to_i
  row[11] = row[11].to_i
  row[12] = row[12].to_i

  unit.no = row[0]
  unit.name = row[1]
  unit.element_id = get_element_id(row[4])
  unit.rarity_id = row[3]
  if unit.rarity_id.to_i > 50
    unit.cost = cost(unit.rarity_id)
  end
  unit.numhits = row[5]
  unit.bb_hits = row[6]
  sbb_hits = row[7]
  unit.sbb_hits = sbb_hits unless sbb_hits == 0
  unit.bb_refill = row[8]
  if unit.base_hp != '--'
    if row[13] == 'Lord'
      unit.max_hp = row[9]
      unit.max_atk = row[10]
      unit.max_def = row[11]
      unit.max_rec = row[12]
    elsif row[13] == 'Anima'
      unit.a_hp = row[9]
      unit.a_rec = row[12]
    elsif row[13] == 'Breaker'
      unit.b_def = row[11]
      unit.b_atk = row[10]
    elsif row[13] == 'Guardian'
      unit.g_def = row[11]
      unit.g_atk = row[10]
    elsif row[13] == 'Oracle'
      unit.o_hp = row[9]
      unit.o_rec = row[12]
    end
  end
  unit.realname = row[2]
  unit.save
end