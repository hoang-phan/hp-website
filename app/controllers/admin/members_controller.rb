class Admin::MembersController < Admin::ResourcesController
  private
  
  def permitted_params
    params.permit(member: [:name, :role])
  end
end
