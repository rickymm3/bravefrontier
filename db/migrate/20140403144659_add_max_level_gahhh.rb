class AddMaxLevelGahhh < ActiveRecord::Migration
  def change
    add_column :units, :max_lvl, :integer
  end
end
