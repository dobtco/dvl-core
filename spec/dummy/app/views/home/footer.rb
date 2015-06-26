class Views::Home::Footer < Views::Base
  def main
    docs 'Footer', %{
      widget Dvl::Components::Footer.new(application_name: 'DOBT Style Guide')
    }, full: true
  end
end
