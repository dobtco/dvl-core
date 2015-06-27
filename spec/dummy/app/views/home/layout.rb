class Views::Home::Layout < Views::Base
  def main
    h2 'Layout'
    
    h3 'Grid'

    docs 'Basic', %{
      div.grid.docs_grid {
        div.item.twelve_columns { span '12' }
      }

      div.grid.docs_grid {
        div.item.eleven_columns { span '11' }
        div.item.one_column { span '1' }
      }
      div.grid.docs_grid {
        div.item.ten_columns { span '10' }
        div.item.two_columns { span '2' }
      }
      div.grid.docs_grid {
        div.item.nine_columns { span '9' }
        div.item.three_columns { span '3' }
      }
      div.grid.docs_grid {
        div.item.eight_columns { span '8' }
        div.item.four_columns { span '4' }
      }
      div.grid.docs_grid {
        div.item.seven_columns { span '7' }
        div.item.five_columns { span '5' }
      }
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

      div.grid.docs_grid {
        div.item.four_columns { span '4' }
        div.item.four_columns { span '4' }
        div.item.four_columns { span '4' }
      }

      div.grid.docs_grid {
        div.item.six_columns { span '6' }
        div.item.three_columns { span '3' }
        div.item.three_columns { span '3' }
      }
    }, hint: 'The grid currently uses a fixed-width gutter.', sub: ''

    docs 'Nested', %{
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
    }, hint: 'When nesting columns, make sure the total adds up to 12 columns or less.', sub: ''

    hr

    docs 'Sidebar Data List', %{
      div.sidebar_box {
        ul.sidebar_data {
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-pencil')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Assigned to'
              div.sidebar_data_value 'Jean-Luc Godard'
              div.sidebar_data_details {
                a 'Reassign?'
              }
            }
          }
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-folder')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Status'
              div.sidebar_data_value {
                simple_form_for :native_select do |f|
                  f.input_field :blah, as: :select, collection: ['Open', 'Pending', 'Rejected'], selected: 'Option 1', 'data-width' => '100%'
                end
              }
            }
          }
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-clock-o')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Revision History'
              div.sidebar_data_value {
                simple_form_for :foo do |f|
                  f.input_field :blah, as: :dropdown_select, collection: [['Edited 06/26/15 at 10:28pm', true, 'by Jean-Luc Godard'], ['Edited 06/23/15 at 05:59am', true, 'by Jean-Pierre Melville'], ['Edited 04/15/15 at 01:15pm', true, 'by Jean Cocteau']], selected: 'Edited 06/26/15 at 10:28pm', 'data-width' => '100%'
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
