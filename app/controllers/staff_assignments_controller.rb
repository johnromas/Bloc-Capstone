class StaffAssignmentsController < ApplicationController
 def create
    # binding.pry
    @staff_assignment = StaffAssignment.new(params[:staff_assignment].permit!)

    if @staff_assignment.save
      flash[:notice] = "Project Role was successfully added"

      respond_to do |format|
          format.html {redirect_to @staff_assignment.job}
          format.js { render :create }
      end
    end
  end

  def destroy
    #binding.pry
    @staff_assignment = StaffAssignment.find(params[:id])
    @staff_assignment_id = @staff_assignment.id
    @staff_assignment.destroy

    respond_to do |format|
      format.html { redirect_to @staff_assignment.job }
      format.js { render :destroy }
    end
  end
end
