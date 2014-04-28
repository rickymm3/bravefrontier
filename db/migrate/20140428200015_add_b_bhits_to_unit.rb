class AddBBhitsToUnit < ActiveRecord::Migration
  def change
    add_column :units, :bb_hits, :integer

  end
end
