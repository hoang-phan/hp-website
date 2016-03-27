class Admin::ProjectsController < ApplicationController
  inherit_resources
  respond_to :html

  before_action :set_current_tab
  before_action :normalize_dates, only: [:create, :update]

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

  def normalize_dates
    params[:project][:start_date] = Date.strptime(params[:project][:start_date], '%m/%d/%Y').to_s
    params[:project][:end_date] = Date.strptime(params[:project][:end_date], '%m/%d/%Y').to_s
  end
end
