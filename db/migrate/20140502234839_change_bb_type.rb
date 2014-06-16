class ChangeBbType < ActiveRecord::Migration
  def change
    rename_column :brave_bursts, :bb_type, :bb_type_id
  end
end
