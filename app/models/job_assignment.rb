class JobAssignment < ActiveRecord::Base
  belongs_to :company
  belongs_to :contact
  belongs_to :job
  belongs_to :daily_manpower
end
