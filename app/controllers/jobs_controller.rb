class JobsController < ApplicationController
  def index
    @jobs = Job.all

    respond_to do |format|
      format.html
      format.json { render json: @jobs }
    end
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
    #binding.pry
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
      def destroy
        @job = Job.find(params[:id])
        @job.destroy

        respond_to do |format|
          format.html { redirect_to jobs_url }
          format.json { head :no_content }
    end
  end
    end

    def update

     @job = Job.find(params[:id])
      #binding.pry
      respond_to do |format|
        if @job.update_attributes(job_params)
          format.html { redirect_to @job, notice: 'Job was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def job_params
      params.require(:job).permit(:name, :address, :city, :state, :zip, :country_id, :project_phase_id, :project_type_id, :sachse_group_id, :contract_type_id, :sqft, :start_date, :turnover_date)
    end
end
