class StaffAssignment < ActiveRecord::Base
  belongs_to :job
  belongs_to :project_role
  belongs_to :user
end
