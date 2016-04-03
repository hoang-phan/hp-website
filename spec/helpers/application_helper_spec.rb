require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '.class_for' do
    subject { helper.class_for(key) }

    let(:key) { 'key' }

    context 'current tab' do
      before do
        assign(:current_tab, key)
      end

      it { is_expected.to eq 'active' }
    end

    context 'other tab' do
      it { is_expected.to be_blank }
    end
  end

  describe '.flash_class_for' do
    subject { helper.flash_class_for(flash_key) }
    let(:flash_key) { 'flash_key' }

    described_class::BOOTSTRAP_CLASS.each do |key, value|
      context ":#{key}" do
        let(:flash_key) { key.to_s }

        it { is_expected.to eq value }
      end
    end

    context 'otherwise' do
      it { is_expected.to eq flash_key }
    end
  end
end
