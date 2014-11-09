require 'capybara/rspec'
require 'capybara/poltergeist'
require 'active_support/all'
require 'erector'
require 'dvl/core'
require_relative '../preview/app'

Capybara.app = App
Capybara.javascript_driver = :poltergeist

def take_screenshot(path, filename, res_x = 900, res_y = 150)
  describe "taking screenshot: #{filename}.png" do
    before do
      page.driver.resize(res_x, res_y)
    end

    it 'works' do
      visit path
      page.save_screenshot "screenshots/#{filename}.png"
    end
  end
end

describe Dvl::Core do
  describe 'Screenshots', type: :feature, js: true do
    # take_screenshot 'Error', 'error'
  end
end
