class AddNewsIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :news_id, :integer
  end
end
