class AddSuperToBb < ActiveRecord::Migration
  def change
    add_column :brave_bursts, :is_super, :boolean
  end
end
