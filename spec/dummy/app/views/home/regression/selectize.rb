class Views::Home::Regression::Selectize < Views::Layout
  def render_body
    div(class: "container") {
      div(class: "form_item form_item_vert") {
        div(class: 'form_item_vert_label') {
          label 'Native', for: 'select2'
        }

        div(class: 'form_item_vert_input') {
          select(id: 'select2') {
            option 'Select a page...', value: ''
            Rails.configuration.x.pages.each do |name, path|
              option(name, value: path)
            end
          }
        }
      }

      div(class: "form_item form_item_vert") {
        div(class: 'form_item_vert_label') {
          label 'Selectize (single)', for: 'select1'
        }

        div(class: 'form_item_vert_input') {
          select('data-no-styled-select' => true, id: 'select1') {
            option 'Select a page...', value: ''
            option('Howdy howdy howdy howdyu howdy howdyho wdhiuwod', value: 'asdf', selected: true)
            Rails.configuration.x.pages.each do |name, path|
              option(name, value: path)
            end
          }
        }
      }

      div(class: "form_item form_item_vert") {
        div(class: 'form_item_vert_label') {
          label 'Native', for: 'select2'
        }

        div(class: 'form_item_vert_input') {
          select(id: 'select2') {
            option 'Select a page...', value: ''
            Rails.configuration.x.pages.each do |name, path|
              option(name, value: path)
            end
          }
        }
      }

      div(class: "form_item form_item_vert") {
        div(class: 'form_item_vert_label') {
          label 'Selectize (multiple)', for: 'select3'
        }

        div(class: 'form_item_vert_input') {
          input(id: 'select3', type: 'text', value: 'african,afar,grist')
        }
      }

      div(class: "form_item form_item_vert") {
        div(class: 'form_item_vert_label') {
          label 'Selectize (remote)', for: 'select5'
        }

        div(class: 'form_item_vert_input') {
          select('data-no-styled-select' => true, id: 'select5') {
            option 'Select a site...', value: ''
          }
        }
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
      $('#select5').selectize({
        delimiter: ',',
        create: false,
        load: function(query, callback) {
          console.log(query);
          if (!query.length) return callback();
          if (query.match(/a/)) {
            setTimeout(function(){
              callback([
                { value: 'foo', text: 'bar' },
                { value: 'foo2', text: 'bar2' },
                { value: 'foo3', text: 'bar3' }
              ]);
            }, 1000);
          }
        }
      });
    }.html_safe
  end
end
