class Views::Home::Regression::Selectize < Views::Base
  def render_body
    label 'Selectize', for: 'select1'

    select('data-no-styled-select' => true, id: 'select1') {
      option 'Select a page...', value: ''
      Rails.configuration.x.pages.each do |name, path|
        option(name, value: path)
      end
    }

    label 'Native', for: 'select2'

    select(id: 'select2', 'data-width' => 'full') {
      option 'Select a page...', value: ''
      Rails.configuration.x.pages.each do |name, path|
        option(name, value: path)
      end
    }

    script %{
      $('#select1').selectize();
    }.html_safe
  end
end
