require 'spec_helper'

describe 'Main' do
  describe 'Screenshots', type: :feature, js: true do
    take_screenshot '/', 'core_1200', res_x: 1200, res_y: 1000, full: true
    take_screenshot '/', 'core_760', res_x: 760, res_y: 1000, full: true
    take_screenshot '/', 'core_400', res_x: 400, res_y: 1000, full: true
    take_screenshot '/footer', 'footer', res_x: 1000, res_y: 200
    take_screenshot '/flashes', 'flash_error', res_y: 100, before: Proc.new { click_link('Error') }
    take_screenshot '/flashes', 'flash_success', res_y: 100, before: Proc.new { click_link('Success') }
    take_screenshot '/flashes', 'flash_info', res_y: 100, before: Proc.new { click_link('Info') }
    take_screenshot '/flashes', 'flash_error_mobile', res_x: 320, res_y: 100, before: Proc.new { click_link('Error') }
    take_screenshot '/', 'modal', res_x: 1000, res_y: 250, before: Proc.new { click_link('Open modal') }
    take_screenshot '/', 'confirm_modal', res_x: 1000, res_y: 250, before: Proc.new { click_link('Confirmation modal') }
  end
end
