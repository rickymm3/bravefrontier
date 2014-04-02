class DropImageColumnsFromUnits < ActiveRecord::Migration
  def change
    remove_column :units, :thumb_image
  end
end
