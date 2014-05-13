class JobsController < ApplicationController
  include NavHelper
  def index
    @jobs = Job.all

    respond_to do |format|
      format.html
      format.json { render json: @jobs, root: false }
    end
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
    @companies = @job.companies
    @staff_assignments = @job.staff_assignments
    @new_staff_assignment = StaffAssignment.new
    @job_assignment = JobAssignment.new
    @checkbook = Checkbook.new
    @checkbooks = @job.checkbooks
    # binding.pry
    @nav_list_items = job_nav_list_items
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    #binding.pry
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, root: false, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end


  def update
   @job = Job.find(params[:id])


    #"jobs#update"
    #binding.pry
    case params[:job][:update_type]
    when :assign_job_number
      @job.assign_job_number!
    else
      # behavor normally
      respond_to do |format|
        if @job.update_attributes(job_params)
          format.html { redirect_to @job, notice: 'Job was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @job.errors, root: true,status: :unprocessable_entity }
        end
      end
    end
  end



  private

  def job_params
    params.require(:job).permit(:state_id, :name, :number, :precon_number, :address, :city, :zip, :country_id, :project_phase_id, :project_type_id, :sachse_group_id, :contract_type_id, :sqft, :start_date, :turnover_date, :building)
  end
end
