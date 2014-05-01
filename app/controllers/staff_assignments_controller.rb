class StaffAssignmentsController < ApplicationController
 def create
    #binding.pry
    @staff_assignment = StaffAssignment.new(params[:staff_assignment].permit!)

    if @staff_assignment.save
      flash[:notice] = "Project Role was successfully added"
      redirect_to @staff_assignment.job
    else
      flash[:error] = "Unable to add projec role. Please try again."
      redirect_to @staff_assignment.job
    end
  end
end
