require 'erector'

class Dvl::Components::Flashes < Erector::Widget
  needs :flash

  def content
    @flash.select { |k, v| k.to_s.in?(%w(success error info alert notice)) && v.present? }.each do |k, v|
      div(class: "flash flash_#{k}") {
        a.flash_close '&times;'.html_safe
        span text v
      }
    end
  end
end

