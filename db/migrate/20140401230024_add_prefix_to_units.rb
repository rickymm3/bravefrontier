class AddPrefixToUnits < ActiveRecord::Migration
  def change
    remove_column :units, :prefix
    add_column :units, :prefix, :string
  end
end
