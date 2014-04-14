class Specialty < ActiveRecord::Base
  belongs_to :company
  belongs_to :trade
end
