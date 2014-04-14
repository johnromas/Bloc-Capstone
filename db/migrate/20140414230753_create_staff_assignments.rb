class CreateStaffAssignments < ActiveRecord::Migration
  def change
    create_table :staff_assignments do |t|
      t.references :job, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
