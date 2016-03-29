class Admin::DashboardsController < Admin::BaseController
  def show
    @current_tab = :dashboard
  end
end
