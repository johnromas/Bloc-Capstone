class AddManpowerToJobAssignments < ActiveRecord::Migration
  def change
    add_column :job_assignments, :daily_manpower_id, :integer
  end
end
