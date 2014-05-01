class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :end_date
      t.text :description
      t.string :image_loc

      t.timestamps
    end
  end
end
