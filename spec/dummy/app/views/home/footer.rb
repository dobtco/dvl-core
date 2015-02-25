class Views::Home::Footer < Views::Base
  def main
    docs 'Footer', %{
      widget Dvl::Components::Footer.new(application_name: 'dvl-core')
    }, full: true
  end
end
