class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.integer :world_id
      t.integer :mission_id

      t.timestamps
    end
  end
end
