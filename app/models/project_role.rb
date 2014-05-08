class ProjectRole < ActiveRecord::Base
  has_many :staff_assignments
  has_many :jobs, through: :staff_assignments

  has_many :role_assignments
  has_many :users, through: :role_assignments

end
