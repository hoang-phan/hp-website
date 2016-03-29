class Admin::ProjectsController < Admin::BaseController
  inherit_resources
  respond_to :html

  before_action :set_current_tab

  def create
    create! do |success, failure|
      success.html { redirect_to admin_projects_path }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to admin_projects_path }
    end
  end

  def permitted_params
    params.permit(project: [:name, :start_date, :end_date])
  end

  private

  def set_current_tab
    @current_tab = :projects
  end
end
