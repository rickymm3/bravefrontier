class DeleteBraveBurstTemp < ActiveRecord::Migration
  def change
    drop_table :brave_bursts
  end
end
