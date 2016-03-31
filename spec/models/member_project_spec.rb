require 'rails_helper'

RSpec.describe MemberProject, type: :model do
  it { is_expected.to belong_to(:project) }
  it { is_expected.to belong_to(:member) }
end
