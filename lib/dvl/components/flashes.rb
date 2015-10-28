require 'erector'

class Dvl::Components::Flashes < Erector::Widget
  needs :flash

  def content
    @flash.select { |k, v| k.to_s.in?(%w(success error info)) && v.present? }.each do |k, v|
      script %{DvlFlash("#{k}", "#{h(v)}")}.html_safe
    end
  end
end

