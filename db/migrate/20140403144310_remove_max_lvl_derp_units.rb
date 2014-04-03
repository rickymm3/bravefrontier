class RemoveMaxLvlDerpUnits < ActiveRecord::Migration
  def change
    remove_column :units, :maxlvl
  end
end
