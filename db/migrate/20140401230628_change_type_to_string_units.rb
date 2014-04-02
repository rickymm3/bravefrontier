class ChangeTypeToStringUnits < ActiveRecord::Migration
  def change
    change_column :units, :description, :text
  end
end
