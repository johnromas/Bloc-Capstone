class DailyNotesController < ApplicationController
  def create
    # binding.pry
    @daily_note = DailyNote.new(daily_note_params)
    if @daily_note.save
      flash[:notice] = "Daily Log Note was successfully added"

      respond_to do |format|
        format.html {redirect_to @dailys}
        format.js { render :create }
      end
    end
  end

  private
  def daily_note_params
     params.require(:daily_note).permit(:daily_id, :issue, :comment, :location)
  end

end
