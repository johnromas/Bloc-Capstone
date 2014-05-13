class DailysController < ApplicationController
  include NavHelper
  def index
    @job = Job.find(params[:job_id])
    @dailys = @job.dailys
    @daily = Daily.new
    @nav_list_items = job_nav_list_items
  end

  def new
    @job = Job.find(params[:job_id])
    @daily = Daily.new
  end

  def edit
    @job = Job.find(params[:job_id])
    @daily = @job.daily.find(params[:id])
  end

  def show
    @job = Job.find(params[:job_id])
    @daily = @job.daily.find(params[:id])

  end

  def create
    #binding.pry
    @job = Job.find(params[:job_id])
    @daily = current_user.dailys.build(daily_params)
    @daily.job = @job
    if @daily.save
      flash[:notice] = "Daily Log was successfully added"

      respond_to do |format|
        format.html {redirect_to @daily.job}
        format.js { render :create }
      end
    end
  end

  def update
    @job = Job.find(params[:id])    
    @daily = Daily.find(params[:id])
  #binding.pry
    if @daily.update_attributes(daily_params)
      format.html { redirect_to @daily.job, notice: 'Daily Log was successfully updated.' }
      
    else
      format.html { render action: "edit" }
      
    end
  end

  def destroy
    @job = Job.find(params[:job_id])
    @daily = Daily.find(params[:id])
    @daily.destroy

    respond_to do |format|
      format.html { redirect_to @job }
      format.js { render :destroy }
    end
  end

private

  def daily_params
      params.require(:daily).permit(:job_id, :date, :user_id, :am_temp, :pm_temp, :weather_desc, :notes)
  end

end
