class AddTypeToBraveBurst < ActiveRecord::Migration
  def change
    create_table :bb_types do |t|
      t.string :name

      t.timestamps
    end
    add_column :brave_bursts, :bb_type, :integer
  end
end
