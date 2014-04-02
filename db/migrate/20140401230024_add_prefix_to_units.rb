class AddPrefixToUnits < ActiveRecord::Migration
  def change
    add_column :units, :prefix, :string
  end
end
