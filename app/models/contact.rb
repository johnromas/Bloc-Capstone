class Contact < ActiveRecord::Base
  belongs_to :company_department
  belongs_to :state
  belongs_to :country

  has_many :employments
  has_many :companies, through: :employments

  has_many :job_assignments
  has_many :jobs, through: :job_assignments
  has_many :daily_manpowers, through: :job_assignments
end
