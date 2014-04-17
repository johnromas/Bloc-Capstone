class Job < ActiveRecord::Base
  belongs_to :state
  belongs_to :country
  belongs_to :project_phase
  belongs_to :project_type
  belongs_to :sachse_group
  belongs_to :union
  belongs_to :contract_type

  has_many :staff_assignments
  has_many :project_roles, through: :staff_assignments

  validates :name, presence: true

  before_save :assign_job_number, on: [ :create, :update ]
  before_save :change_job_number, on: [ :update ]
  before_save :assign_precon_number, on: :create

  protected

  def assign_precon_number
    if !self.precon_number?
      array = []
        j = Job.all
        j.each do |job|
            #Loop across all jobs and pull out those that have a job number, as well as check if the first two digits of that job number (the year) == the current year
            array << job.precon_number if job.precon_number? && Time.now.strftime("%y") == job.precon_number[0..1]
          end
          #add one to the count of the array (if the current year and job number year don't equal, then it must be a new year and the count starts at 0)
          a = array.count + 1
      y = Time.now.strftime("%y")
      t = 35
      c = a.to_s.rjust(3, '0')
      self.precon_number = "#{y}-#{t}-#{c}"
    end
  end

  def assign_job_number
    #Does the job not have a job # but have a Contract Type?
    if !self.number? && self.contract_type_id?
        #Create an empty array
        array = []
        j = Job.all
        j.each do |job|
          #Loop across all jobs and pull out those that have a job number, and also check to see if the job number's year == the current year
          array << job.number if job.number? && Time.now.strftime("%y") == job.number[0..1]
        end
        a = array.count + 1
        y = Time.now.strftime("%y")
        t = self.contract_type.number
        c = a.to_s.rjust(3, '0')
        self.number = "#{y}-#{t}-#{c}"
    end
  end

  def change_job_number
    #Check if the job has a contract ID
    if self.contract_type_id?
      n = self.number
      y = n[0..1]
      t = self.contract_type.number
      c = n[6..8]
      self.number = "#{y}-#{t}-#{c}"
    end
  end
end
