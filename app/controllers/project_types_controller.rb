class ProjectTypesController < ApplicationController
def index
    @projectTypes = ProjectType.all

    respond_to do |format|
      format.html
      format.json { render json: @projectTypes, root: false }
    end
  end
end
