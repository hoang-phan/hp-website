class Admin::ProjectsController < ApplicationController
  inherit_resources
  respond_to :html

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
end
