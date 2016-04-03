class Admin::ProjectsController < Admin::ResourcesController
  private
  
  def permitted_params
    params.permit(project: [:name, :start_date, :end_date])
  end
end
