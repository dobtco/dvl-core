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

    docs 'Footer', %{
      widget Dvl::Components::Footer.new(application_name: 'DOBT Style Guide')
    }
  end
end
