class ChangeUnitsToBeMorePreciseStats < ActiveRecord::Migration
  def change
    remove_column :units, :o_atk, :integer
    remove_column :units, :o_def, :integer
    remove_column :units, :o_rec, :integer
    remove_column :units, :o_hp, :integer
    remove_column :units, :g_atk, :integer
    remove_column :units, :g_def, :integer
    remove_column :units, :g_rec, :integer
    remove_column :units, :g_hp, :integer
    remove_column :units, :l_atk, :integer
    remove_column :units, :l_def, :integer
    remove_column :units, :l_rec, :integer
    remove_column :units, :l_hp, :integer
    remove_column :units, :a_atk, :integer
    remove_column :units, :a_def, :integer
    remove_column :units, :a_rec, :integer
    remove_column :units, :a_hp, :integer
    remove_column :units, :b_atk, :integer
    remove_column :units, :b_def, :integer
    remove_column :units, :b_rec, :integer
    remove_column :units, :b_hp, :integer

    add_column :units, :max_hp, :integer
    add_column :units, :max_atk, :integer
    add_column :units, :max_def, :integer
    add_column :units, :max_rec, :integer

    add_column :units, :a_hp, :integer
    add_column :units, :a_rec, :integer

    add_column :units, :b_atk, :integer
    add_column :units, :b_def, :integer

    add_column :units, :g_atk, :integer
    add_column :units, :g_def, :integer

    add_column :units, :o_hp, :integer
    add_column :units, :o_rec, :integer
  end
end
