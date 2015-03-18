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

    docs 'Custom gutters', %{
      div.grid.docs_grid.docs_grid_custom_gutter_zero {
        div.item.six_columns { span '6, no gutter' }
        div.item.six_columns { span '6, no gutter' }
      }

      div.grid.docs_grid.docs_grid_custom_gutter_4rem {
        div.item.six_columns { span '6, 4rem gutter' }
        div.item.six_columns { span '6, 4rem gutter' }
      }

      div.grid.docs_grid.docs_grid_custom_gutter_4rem {
        div.item.three_columns { span '3/4rem' }
        div.item.three_columns { span '3/4rem' }
        div.item.three_columns { span '3/4rem' }
        div.item.three_columns { span '3/4rem' }
      }
    }, hint: 'The gutter width can be customized with a SASS mixin.'
  end
end
