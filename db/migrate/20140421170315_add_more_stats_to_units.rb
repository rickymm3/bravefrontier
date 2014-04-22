class AddMoreStatsToUnits < ActiveRecord::Migration
  def change
    add_column :units, :o_atk, :integer
    add_column :units, :o_def, :integer
    add_column :units, :o_rec, :integer
    add_column :units, :o_hp, :integer
    add_column :units, :g_atk, :integer
    add_column :units, :g_def, :integer
    add_column :units, :g_rec, :integer
    add_column :units, :g_hp, :integer
    add_column :units, :l_atk, :integer
    add_column :units, :l_def, :integer
    add_column :units, :l_rec, :integer
    add_column :units, :l_hp, :integer
    add_column :units, :a_atk, :integer
    add_column :units, :a_def, :integer
    add_column :units, :a_rec, :integer
    add_column :units, :a_hp, :integer
    add_column :units, :b_atk, :integer
    add_column :units, :b_def, :integer
    add_column :units, :b_rec, :integer
    add_column :units, :b_hp, :integer
  end
end
