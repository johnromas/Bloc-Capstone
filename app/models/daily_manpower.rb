class DailyManpower < ActiveRecord::Base
  belongs_to :daily

  has_many :job_assignments
  has_many :companies, through: :job_assignments
  has_many :contacts, through: :job_assignments
end
