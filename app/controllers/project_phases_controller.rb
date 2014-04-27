class ProjectPhasesController < ApplicationController
  def index
    @projectPhases = ProjectPhase.all

    respond_to do |format|
      format.html
      format.json { render json: @projectPhases, root: false }
    end
  end
end
