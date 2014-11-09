require 'capybara/rspec'
require 'capybara/poltergeist'
require 'active_support/all'
require 'erector'
require 'dvl/core'
require_relative '../preview/app'

Capybara.app = App
Capybara.javascript_driver = :poltergeist

def take_screenshot(path, name, res_x = 900, res_y = 150, opts = {})
  describe "taking screenshot: #{name}.png" do
    before do
      page.driver.resize(res_x, res_y)
    end

    it 'works' do
      visit path
      page.save_screenshot "screenshots/#{name}.png", opts
    end
  end
end

describe Dvl::Core do
  describe 'Screenshots', type: :feature, js: true do
    take_screenshot '/', 'all_1200', 1200, 1000, full: true
    take_screenshot '/', 'all_760', 760, 1000, full: true
    take_screenshot '/', 'all_400', 400, 1000, full: true
  end
end
