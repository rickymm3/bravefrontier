class AddImageToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_loc, :string
  end
end
