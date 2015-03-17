class Views::Home::Grid < Views::Base
  def main
    docs 'Grid', %{
      div.grid.docs_grid {
        div.item.six_columns '6'
        div.item.six_columns '6'
      }

      div.grid.docs_grid {
        div.item.three_columns '3'
        div.item.three_columns '3'
        div.item.three_columns '3'
        div.item.three_columns '3'
      }
    }, hint: 'The grid uses a fluid gutter.'

    docs 'Nested grid', %{
      div.grid.docs_grid {
        div.item.six_columns '6'
        div.item.six_columns {
          div.grid {
            div.item.four_columns '4'
            div.item.four_columns '4'
            div.item.four_columns '4'
          }
        }
      }
    }

    docs 'Overriding gutters', %{
      p 'Todo: add example of how to override the gutters'
    }
  end
end
