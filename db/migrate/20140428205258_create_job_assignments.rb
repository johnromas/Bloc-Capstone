class CreateJobAssignments < ActiveRecord::Migration
  def change
    create_table :job_assignments do |t|
      t.integer :job_id
      t.integer :company_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
