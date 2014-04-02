class RemoveEvolveFromUnits < ActiveRecord::Migration
  def change
    remove_column :units, :evolve_id
  end
end
