class AddSlugToUnit < ActiveRecord::Migration
  def change
    add_column :units, :slug, :string
  end
end
