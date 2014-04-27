class CompanySerializer < ActiveModel::Serializer
  require 'date'
  attributes :id, :name, :state, :address, :city, :zip, :phone, :fax, :website


end
