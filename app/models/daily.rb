class Daily < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  has_many :daily_notes
  has_many :daily_manpowers
  has_many :contacts, through: :job_assignments
  has_many :daily_equipments
end
