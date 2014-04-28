class AddSbbColumnToUnits < ActiveRecord::Migration
  def change
    add_column :units, :sbb, :string
    add_column :units, :sbb_hits, :string
    add_column :units, :bb_refill, :string
  end
end
