shared_examples_for 'resources controller' do |resource_name|
  http_login

  let(:controller_name) { controller.controller_name }

  let(:resource_params) do
    attributes_for(resource_name).merge(name: name)
  end

  let(:name) { Faker::Name.name }

  describe 'POST create' do
    let(:params) do
      {
        resource_name => resource_params
      }
    end

    before do
      post :create, params
    end

    context 'success' do
      it 'redirects to projects path' do
        expect(response).to redirect_to([:admin, controller_name])
      end
    end

    context 'failure' do
      let(:name) { '' }

      it 'renders new page with correct message' do
        expect(response).to render_template(:new)
        expect(flash[:error]).to eq "Name can't be blank"
      end
    end
  end

  describe 'PUT update' do
    let(:params) do
      {
        resource_name => resource_params,
        id: resource.id
      }
    end

    let(:resource) { create(resource_name) }

    before do
      put :update, params
    end

    context 'success' do
      it 'redirects to projects path' do
        expect(response).to redirect_to([:admin, controller_name])
      end
    end

    context 'failure' do
      let(:name) { '' }

      it 'renders edit page with correct message' do
        expect(response).to render_template(:edit)
        expect(flash[:error]).to eq "Name can't be blank"
      end
    end
  end
end
