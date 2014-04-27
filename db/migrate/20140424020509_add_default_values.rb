class AddDefaultValues < ActiveRecord::Migration
  def change
    change_column :jobs, :project_phase_id, :integer, default: 1
  end
end
