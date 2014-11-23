require 'spec_helper'

describe 'Flashes' do
  describe 'Integration', type: :feature, js: true do
    it 'Flashes properly' do
      visit '/'
      page.execute_script "DvlFlash('error', 'Yeah!')"
      expect(page).to have_selector '.flash.flash_error', text: 'Yeah!'
      sleep 4
      expect(page).to_not have_selector '.flash.flash_error', text: 'Yeah!'
    end
  end

  describe Dvl::Core::Components::Flashes do
    let!(:success_html) do
      described_class.new(
        flash: { 'success' => 'Yeah!' }
      ).to_html
    end

    let!(:error_html) do
      described_class.new(
        flash: { 'error' => 'No!' }
      ).to_html
    end

    it 'renders the proper html' do
      expect(success_html).to have_tag('div.flash_success', content: 'Yeah!')
    end

    it 'renders the proper html' do
      expect(error_html).to have_tag('div.flash_error', content: 'No!')
    end
  end
end
