class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :subject
      t.string :body
      t.integer :user_id
      t.integer :approved

      t.timestamps
    end
  end
end
