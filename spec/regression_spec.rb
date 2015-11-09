require 'spec_helper'

describe 'Regression', type: :feature, js: true do
  subject { page }

  describe 'docs pages' do
    it 'renders properly' do
      Rails.configuration.x.pages.each do |k, v|
        visit v
        Percy::Capybara.snapshot(page, name: "Basic regression spec - #{k}")
      end
    end
  end

  describe 'basic dropdown' do
    it 'renders properly' do
      visit '/regression/dropdown'
      click_link 'Dropdown'
      Percy::Capybara.snapshot(page)
    end
  end

  describe 'selectize dropdown' do
    it 'renders properly' do
      visit '/regression/selectize'
      page.execute_script %{$('.selectize-input div').click()}
      Percy::Capybara.snapshot(page)
    end
  end
end
