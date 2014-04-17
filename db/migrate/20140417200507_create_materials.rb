class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :unit_id
      t.integer :evolve_unit_id

      t.timestamps
    end
  end
end
