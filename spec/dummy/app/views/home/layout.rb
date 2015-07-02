class Views::Home::Layout < Views::Page
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

    docs 'Blank States', %{
      div.blank_slate {
        i(class: 'fa fa-star')
        h4 'No ratings yet!'
        span 'Ratings give you a standard set of criteria to judge responses.'
        a.button.primary 'Add your first rating'
      }
    }, hint: 'When there is no data to display in the current view, a well-designed blank state can prevent users from losing their momentum.'

    guide %{ <div class="blank_slate">
              <i class="fa fa-file-o"></i>
              <h4>No attachments yet!</h4>
              <span>Uploading videos and images to an amicus brief can help it stand out.</span>
              <a class="button primary">Add an attachment</a>
              </div>
        }.html_safe,
      %{<strong>Do</strong> use blank states to help explain the purpose of a page, and show users how to add data to it.}.html_safe,
      %{<div class="blank_slate">
          <i class="fa fa-file-o"></i>
          <h4>No attachments</h4>
        </div>}.html_safe,
      %{<strong>Don&#39;t</strong> turn a blank state into a dead end. Provide users with a way to move forward.}.html_safe

    docs 'Footer', %{
      widget Dvl::Components::Footer.new(application_name: 'DOBT Style Guide')
    }
  end
end
