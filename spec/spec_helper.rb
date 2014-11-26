require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec-html-matchers'
require 'active_support/all'
require 'erector'
require 'dvl/core'
require_relative '../preview/app'

Capybara.app = App
Capybara.javascript_driver = :poltergeist

def take_screenshot(path, name, opts = {})
  describe "taking screenshot: #{name}.png" do
    before do
      page.driver.resize(opts[:res_x] || 900, opts[:res_y] || 500)
    end

    it 'works' do
      visit path
      self.instance_eval(&opts[:before]) if opts[:before]
      page.save_screenshot "screenshots/#{name}.png", opts.slice(:full)
    end
  end
end
