class AddFriendlyIdSlugToBb < ActiveRecord::Migration
  def change
    add_column :brave_bursts, :slug, :string
    add_index :brave_bursts, :slug, unique: true
  end
end
