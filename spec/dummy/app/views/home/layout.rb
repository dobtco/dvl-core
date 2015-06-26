class Views::Home::Layout < Views::Base
  def main
    h2 'Layout'
    
    docs 'Grid', %{
      div.grid.docs_grid {
        div.item.six_columns { span '6' }
        div.item.six_columns { span '6' }
      }

      div.grid.docs_grid {
        div.item.three_columns { span '3' }
        div.item.three_columns { span '3' }
        div.item.three_columns { span '3' }
        div.item.three_columns { span '3' }
      }
    }, hint: 'The grid currently uses a fixed-width gutter.'

    docs 'Nested grid', %{
      div.grid.docs_grid {
        div.item.six_columns { span '6' }
        div.item.six_columns {
          div.grid {
            div.item.four_columns { span '4' }
            div.item.four_columns { span '4' }
            div.item.four_columns { span '4' }
          }
        }
      }
    }

    docs 'Sidebar Data List', %{
      div.sidebar_box {
        ul.sidebar_data {
          li {
            div.sidebar_data_icon {
              i '✓'
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Label'
              div.sidebar_data_value 'Value'
              div.sidebar_data_details 'Details'
            }
          }
          li {
            div.sidebar_data_icon {
              i '✓'
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Dropdowns'
              div.sidebar_data_value {
                simple_form_for :foo do |f|
                  f.input_field :blah, as: :select, collection: ['Bar'], selected: 'Bar', 'data-width' => '100%'
                  br
                  f.input_field :blah, as: :dropdown_select, collection: [['Bar', 'Bar', 'Bar']], selected: 'Bar', 'data-width' => '100%'
                end
              }
            }
          }
        }
      }
    }

    docs 'Footer', %{
      widget Dvl::Components::Footer.new(application_name: 'DOBT Style Guide')
    }, full: true
  end
end
