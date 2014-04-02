class ChangePrefixColumnUnits < ActiveRecord::Migration
  def change
    remove_column :units, :prefix
    add_column :units, :realname, :string
  end
end
