require 'rails_helper'

RSpec.describe Admin::ProjectsController, type: :controller do
  http_login
  
  describe 'POST create' do
    let(:params) do
      {
        project: attributes_for(:project)
      }
    end

    it 'redirects to projects path when success' do
      post :create, params
      expect(response).to redirect_to(admin_projects_path)
    end
  end

  describe 'PUT update' do
    let(:params) do
      {
        project: attributes_for(:project),
        id: project.id
      }
    end
    let(:project) { create(:project) }

    it 'redirects to projects path when success' do
      put :update, params
      expect(response).to redirect_to(admin_projects_path)
    end
  end
end
