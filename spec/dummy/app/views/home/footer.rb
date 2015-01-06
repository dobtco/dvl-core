class Views::Home::Footer < Views::Base
  def main
    br
    br
    widget Dvl::Components::Footer.new(application_name: 'dvl-core')
  end
end
