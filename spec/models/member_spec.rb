require 'rails_helper'

RSpec.describe Member, type: :model do
  it { is_expected.to have_many(:member_projects) }
  it { is_expected.to have_many(:projects).through(:member_projects) }
end
