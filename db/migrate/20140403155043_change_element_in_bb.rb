class ChangeElementInBb < ActiveRecord::Migration
  def change
    rename_column :brave_bursts, :element, :element_id
  end
end
