class AddIndexToUsersSlug < ActiveRecord::Migration
  def change
    add_index :units, :slug, unique: true
  end
end
