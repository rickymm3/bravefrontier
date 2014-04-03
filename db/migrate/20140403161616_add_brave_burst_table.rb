class AddBraveBurstTable < ActiveRecord::Migration
  def change
    create_table :brave_bursts do |t|
      t.string :name
      t.integer :num_hits
      t.string :element

      t.timestamps
    end
  end
end
