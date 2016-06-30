class Views::Home::Regression::Selectize < Views::Layout
  def render_body
    div(class: "container") {
      div(class: "form_item") {
        label 'Native', for: 'select2'

        select(id: 'select2', 'data-width' => 'full') {
          option 'Select a page...', value: ''
          Rails.configuration.x.pages.each do |name, path|
            option(name, value: path)
          end
        }
      }

      div(class: "form_item") {
        label 'Selectize (single)', for: 'select1'

        select('data-no-styled-select' => true, id: 'select1') {
          option 'Select a page...', value: ''
          option('Howdy howdy howdy howdyu howdy howdyho wdhiuwod', value: 'asdf', selected: true)
          Rails.configuration.x.pages.each do |name, path|
            option(name, value: path)
          end
        }
      }

      div(class: "form_item") {
        label 'Native', for: 'select2'

        select(id: 'select2', 'data-width' => 'full') {
          option 'Select a page...', value: ''
          Rails.configuration.x.pages.each do |name, path|
            option(name, value: path)
          end
        }
      }

      div(class: "form_item") {

        label 'Selectize (multiple)', for: 'select3'

        input(id: 'select3', type: 'text', value: 'african,afar,grist')
      }
    }

    script %{
      $('#select1').selectize();
      $('#select3').selectize({
        delimiter: ',',
        persist: false,
        create: function(input) {
          return {
              value: input,
              text: input
          }
        }
      });
    }.html_safe
  end
end
