class AddJobToCheckbook < ActiveRecord::Migration
  def change
    add_column :checkbooks, :job_id, :integer
  end
end
