class Admin::ProjectsController < Admin::ResourcesController
  private

  def permitted_params
    params.permit(project: [:name, :start_month, :start_year, member_ids: []])
  end
end
