class ContractTypesController < ApplicationController
  def index
    @contractTypes = ContractType.all

    respond_to do |format|
      format.html
      format.json { render json: @contractTypes, root: false }
    end
  end
end
