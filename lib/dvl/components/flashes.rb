require 'erector'

class Dvl::Components::Flashes < Erector::Widget
  needs :flash,
        accept_keys: %w(success error info)

  def content
    selected_flashes.each do |k, v|
      if v.is_a?(Array)
        text, links = v
      else
        text = v
      end

      script %{DvlFlash("#{k}", "#{h(text)}", "#{escape_javascript(links)}")}.html_safe
    end
  end

  def selected_flashes
    @flash.select { |k, v| k.to_s.in?(@accept_keys) && v.present? }
  end
end
