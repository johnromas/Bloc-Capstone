class Union < ActiveRecord::Base
  has_many :companies
  has_many :jobs
end
