class DestroyEvolutions < ActiveRecord::Migration
  def change
    drop_table :evolutions
  end
end
