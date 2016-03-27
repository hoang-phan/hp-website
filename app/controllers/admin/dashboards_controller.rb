class Admin::DashboardsController < ApplicationController
  def show
    @current_tab = :dashboard
  end
end