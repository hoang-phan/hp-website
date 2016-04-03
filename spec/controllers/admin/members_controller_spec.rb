require 'rails_helper'

RSpec.describe Admin::MembersController, type: :controller do
  http_login
  
  describe 'POST create' do
    let(:params) do
      {
        member: attributes_for(:member)
      }
    end

    it 'redirects to members path when success' do
      post :create, params
      expect(response).to redirect_to(admin_members_path)
    end
  end

  describe 'PUT update' do
    let(:params) do
      {
        member: attributes_for(:member),
        id: member.id
      }
    end
    let(:member) { create(:member) }

    it 'redirects to members path when success' do
      put :update, params
      expect(response).to redirect_to(admin_members_path)
    end
  end
end
