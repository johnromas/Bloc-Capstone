class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    respond_to do |format|
      format.html
      format.json { render json: @companies }
    end
  end

  def new
    @company = Company.new
    @states = State.all
  end

  def edit
  end

  def show
    @company = Company.find(params[:id])
    @contact = Contact.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company, notice: "Company was saved successfully."
    else
      flash[:error] = "Error creating company. Please try again."
      render :new
    end
  end

  private

  def company_params
      params.require(:company).permit!#(:name, :address, :city, :zip, :state_id)
  end
end
