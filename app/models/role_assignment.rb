class RoleAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project_role
end
