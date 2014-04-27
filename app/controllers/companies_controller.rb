class CompaniesController < ApplicationController
  respond_to :html, :js
  def index
    @companies = Company.all

    respond_to do |format|
      format.html
      format.json { render json: @companies, root: false }
    end
  end

  def new
    @company = Company.new
    @states = State.all
  end

  def edit
    @company = Company.find(params[:id])
  end

  def show
    @company = Company.find(params[:id])
    @contact = Contact.new
  end

 def create
    #binding.pry
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render json: @company, status: :created, location: @company }
      else
        format.html { render action: "new" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

     @company = Company.find(params[:id])
      #binding.pry
      respond_to do |format|
        if @company.update_attributes(company_params)
          format.html { redirect_to @company, notice: 'company was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @company.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy

        respond_to do |format|
          format.html { redirect_to companies_url }
          format.json { head :no_content }
        end
      end
  private

  def company_params
      params.require(:company).permit(:name, :address, :city, :state_id, :country_id, :zip, :phone, :website, :company_type_id)
    end
end
