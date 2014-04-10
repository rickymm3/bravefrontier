class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :heading
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
