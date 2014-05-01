class JobAssignmentsController < ApplicationController
 def create
    # binding.pry
    # @job = JobAssignment.find(params[:job_id])
    # @company = JobAssignment.find(params[:company_id])
    @job_assignment = JobAssignment.new(params[:job_assignment].permit!)

    if @job_assignment.save
      flash[:notice] = "Contact was successfully added"
      redirect_to @job_assignment.job
    else
      flash[:error] = "Unable to add contact. Please try again."
      redirect_to @job_assignment.job
    end
  end
end
