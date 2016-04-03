require 'rails_helper'

RSpec.describe Admin::ProjectsController, type: :controller do
  it_behaves_like 'resources controller', :project
end
