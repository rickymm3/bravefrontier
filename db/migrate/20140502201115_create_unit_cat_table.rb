class CreateUnitCatTable < ActiveRecord::Migration
  def change
    create_table :unit_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
