module NavHelper
  def job_nav_list_items
    # @job = Job.find(params[:id])
    @nav_list_items = [[job_checkbooks_path(@job), 'Checkbooks'], [job_dailys_path(@job), "Daily Logs"]]
  end
end
