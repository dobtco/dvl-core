require 'spec_helper'

describe 'Main' do
  describe 'Screenshots', type: :feature, js: true do
    take_screenshot '/', 'core_1200', 1200, 1000, full: true
    take_screenshot '/', 'core_760', 760, 1000, full: true
    take_screenshot '/', 'core_400', 400, 1000, full: true
    take_screenshot '/footer', 'footer', 1000, 400
    take_flash_screenshot 'Error', 'flash_error'
    take_flash_screenshot 'Success', 'flash_success'
    take_flash_screenshot 'Info', 'flash_info'
    take_flash_screenshot 'Error', 'flash_error_mobile', 320, 150
  end
end
