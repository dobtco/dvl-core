require 'spec_helper'

describe 'Regression', type: :feature, js: true do
  subject { page }

  context 'basic dropdown' do
    before do
      visit '/regression/dropdown'
      click_link 'Dropdown'
    end

    it { should match_expectation }
  end
end
