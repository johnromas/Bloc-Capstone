class AddProjectRoleToStaffAssignments < ActiveRecord::Migration
  def change
    add_column :staff_assignments, :project_role_id, :integer
  end
end
