class CheckbooksController < ApplicationController
  def index
    @job = Job.find(params[:id])
    @checkbooks = @job.checkbooks
  end

  def new
    @checkbook = Checkbook.new
  end

  def edit
    @checkbook = Checkbook.find(params[:id])
  end

  def show
    @checkbook = Checkbook.find(params[:id])
  end

 def create
    #binding.pry
    @checkbook = Checkbook.new(checkbook_params)
    if @checkbook.save
      flash[:notice] = "Checkbook was successfully added"

      respond_to do |format|
        format.html {redirect_to @checkbook.job}
        format.js { render :create }
      end
    end
  end

  def update

  @checkbook = Checkbook.find(params[:id])
  #binding.pry
    if @company.update_attributes(checkbook_params)
      format.html { redirect_to @checkbook.job, notice: 'Checkbook was successfully updated.' }
      
    else
      format.html { render action: "edit" }
      
    end
  end

  def destroy
    @checkbook = Checkbook.find(params[:id])
    @checkbook.destroy

    respond_to do |format|
      format.html { redirect_to companies_url }

    end
  end
  private

  def checkbook_params
      params.require(:checkbook).permit(:name, :description, :budget, :cost_to_date, :savings_overrun, :job_id)
    end
end
