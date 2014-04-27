class JobSerializer < ActiveModel::Serializer
  require 'date'
  attributes :id, :name, :number, :precon_number, :address, :name_as_link, :city, :zip, :state, :contract_type, :sqft, :project_type, :start_date, :turnover_date, :project_phase, :building, :sachse_group





  def name_as_link
    "<a href = \"#{job_path(object)}\">#{object.name}</a>"
  end
  
  def start_date
    object.start_date.strftime("%m/%d/%y") if object.start_date?
  end
  
  def turnover_date
    object.turnover_date.strftime("%m/%d/%y") if object.turnover_date?
  end

end
