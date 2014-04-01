class CreateElements < ActiveRecord::Migration
  def change
    drop_table :elements
    create_table :elements do |t|
      t.string :name

      t.timestamps
    end
  end
end
