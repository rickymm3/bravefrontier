class AddCostToUnits < ActiveRecord::Migration
  def change
    add_column :units, :cost, :integer
  end
end
