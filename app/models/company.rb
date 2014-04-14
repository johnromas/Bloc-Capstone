class Company < ActiveRecord::Base
  belongs_to :state
  belongs_to :company_type
  
  has_many :specialties
  has_many :trades, through: :specialties
end
