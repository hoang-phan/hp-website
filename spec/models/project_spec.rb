require 'rails_helper'

RSpec.describe Project, type: :model do
  it { is_expected.to have_many(:member_projects) }
  it { is_expected.to have_many(:members).through(:member_projects) }
  it { is_expected.to validate_presence_of(:name) }

  it 'validates minmax of start_month and start_year' do
    is_expected.to validate_numericality_of(:start_month)
                    .is_greater_than_or_equal_to(described_class::MIN_MONTH)
                    .is_less_than_or_equal_to(described_class::MAX_MONTH)

    is_expected.to validate_numericality_of(:start_year)
                    .is_greater_than_or_equal_to(described_class::MIN_YEAR)
                    .is_less_than_or_equal_to(described_class::MAX_YEAR)
  end
end
