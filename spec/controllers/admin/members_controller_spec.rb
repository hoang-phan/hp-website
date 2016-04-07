require 'rails_helper'

RSpec.describe Admin::MembersController, type: :controller do
  it_behaves_like 'resources controller', :member
end
