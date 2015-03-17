class Views::Home::Grid < Views::Base
  def main
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
  end
end
