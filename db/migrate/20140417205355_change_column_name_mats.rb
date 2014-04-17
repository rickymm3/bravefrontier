class ChangeColumnNameMats < ActiveRecord::Migration
  def change
    rename_column :materials, :evolve_unit_id, :evolve_unit_no
  end
end
