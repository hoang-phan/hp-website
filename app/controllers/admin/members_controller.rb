class Admin::MembersController < Admin::BaseController
  inherit_resources
  respond_to :html

  before_action :set_current_tab

  def create
    create! do |success, failure|
      success.html { redirect_to admin_members_path }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to admin_members_path }
    end
  end

  def permitted_params
    params.permit(member: [:name, :role])
  end

  private

  def set_current_tab
    @current_tab = :members
  end
end
