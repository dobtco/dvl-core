require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec-html-matchers'
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

def take_flash_screenshot(type, name, res_x = 900, res_y = 150, opts = {})
  describe "taking flash screenshot: #{name}.png" do
    before do
      page.driver.resize(res_x, res_y)
    end

    it 'works' do
      visit '/flashes'
      click_link type
      page.save_screenshot "screenshots/#{name}.png", opts
    end
  end
end

