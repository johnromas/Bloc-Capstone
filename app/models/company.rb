class Company < ActiveRecord::Base
  belongs_to :state
  belongs_to :company_type
  belongs_to :trade
  belongs_to :country
  
  has_many :specialties
  has_many :trades, through: :specialties
  has_many :employments
  has_many :contacts, through: :employments
end
