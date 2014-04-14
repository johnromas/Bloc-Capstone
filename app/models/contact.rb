class Contact < ActiveRecord::Base
  belongs_to :company_department
  belongs_to :state
  belongs_to :country

  has_many :employments
  has_many :companies, through: :employments
end
