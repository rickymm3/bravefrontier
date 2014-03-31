class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :description
      t.integer :no
      t.integer :element_id
      t.integer :rarity_id
      t.integer :base_hp
      t.integer :base_atk
      t.integer :base_def
      t.integer :base_rec
      t.integer :ls_id
      t.integer :bb_id
      t.integer :numhits
      t.integer :evolve_id
      t.string :slug
      t.string :thumb_image
      t.string :full_image

      t.timestamps
    end
  end
end
