class CreateRoleAssignments < ActiveRecord::Migration
  def change
    create_table :role_assignments do |t|
      t.references :user, index: true
      t.references :project_role, index: true

      t.timestamps
    end
  end
end
