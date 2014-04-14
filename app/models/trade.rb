class Trade < ActiveRecord::Base
  has_many :specialties
  has_many :companies, through: :specialties
end
