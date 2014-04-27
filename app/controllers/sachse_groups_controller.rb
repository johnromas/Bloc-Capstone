class SachseGroupsController < ApplicationController
  def index
    @sachseGroups = SachseGroup.all

    respond_to do |format|
      format.html
      format.json { render json: @sachseGroups, root: false }
    end

  end
end
