class ContactsController < ApplicationController
  def index
  end

  def new
    @company = Company.find(params[:company_id])
    @contact = Contact.new
  end

  def show
  end

  def edit
  end

  def create
    @company = Company.find(params[:company_id])
    @contact = Contact.new(contact_params)
    # @employment = @contact.build_employment(params[:employment])
    if @contact.save
      @company.contacts << @contact
      redirect_to @company, notice: "Contact was added successfully."
    else
      flash[:error] = "Error creating contact. Please try again."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:f_name, :l_name, :title, :company_department_id, :address, :city, :state_id, :zip, :mobile_phone, :alt_phone, :notes)
  end
end
