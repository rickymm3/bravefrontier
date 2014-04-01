class AddImageForElement < ActiveRecord::Migration
  def change
    add_column :elements, :image_loc, :string
  end
end
