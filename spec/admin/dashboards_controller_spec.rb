require 'rails_helper'

RSpec.describe Admin::DashboardsController, type: :controller do
  describe 'GET show' do
    it 'assigns current tab' do
      get :show
      expect(assigns(:current_tab)).to eq(:dashboard)
    end
  end
end