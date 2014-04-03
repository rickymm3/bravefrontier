class AddMaxlvlToUnits < ActiveRecord::Migration
  def change
    add_column :units, :maxlvl, :integer
  end
end
