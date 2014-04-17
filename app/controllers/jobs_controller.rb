class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job, notice: "Job was saved successfully."
    else
      flash[:error] = "Error creating job. Please try again."
      render :new
    end
  end

  def destroy
  end

  def update
    @job = Job.find(parmas[:id])
    if @job.update_attributes(job_params)
      redirect_to @job, notice: "Job was updated successfully."
    else
      flash[:error] = "Error updating job. Please try again."
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :address, :city, :state, :zip, :country_id, :project_phase_id, :project_type_id, :sachse_group_id, :sqft, :start_date, :turnover_date)
  end
end
