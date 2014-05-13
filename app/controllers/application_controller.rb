class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_nav_list_items
  before_action :set_recent_jobs

  def set_nav_list_items
    @nav_list_items = [[psr_index_path, 'PSR'], [companies_path, 'Companies'], [jobs_path, 'Jobs'], [root_path, 'Users']]
  end


  def after_sign_in_path_for(resource)
    jobs_path
  end

  def set_recent_jobs
    @jobs = Job.all
  end
end
