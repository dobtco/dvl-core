require 'spec_helper'

describe 'Regression', type: :feature, js: true do
  subject { page }

  it 'takes screenshots w/ Percy.io ;)' do
    Rails.configuration.x.pages.each do |k, v|
      visit v
      Percy::Capybara.snapshot(page, name: "Basic regression spec - #{k}")
    end
  end
end
