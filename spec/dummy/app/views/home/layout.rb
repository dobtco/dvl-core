class Views::Home::Layout < Views::Page
  def main
    h2 'Layout'

    h3 'Grid'

    docs 'Basic', %{
      div(class: 'grid docs_grid') {
        div(class: 'item twelve_columns') { span '12' }
      }

      div(class: 'grid docs_grid') {
        div(class: 'item eleven_columns') { span '11' }
        div(class: 'item one_column') { span '1' }
      }
      div(class: 'grid docs_grid') {
        div(class: 'item ten_columns') { span '10' }
        div(class: 'item two_columns') { span '2' }
      }
      div(class: 'grid docs_grid') {
        div(class: 'item nine_columns') { span '9' }
        div(class: 'item three_columns') { span '3' }
      }
      div(class: 'grid docs_grid') {
        div(class: 'item eight_columns') { span '8' }
        div(class: 'item four_columns') { span '4' }
      }
      div(class: 'grid docs_grid') {
        div(class: 'item seven_columns') { span '7' }
        div(class: 'item five_columns') { span '5' }
      }
      div(class: 'grid docs_grid') {
        div(class: 'item six_columns') { span '6' }
        div(class: 'item six_columns') { span '6' }
      }

      div(class: 'grid docs_grid') {
        div(class: 'item three_columns') { span '3' }
        div(class: 'item three_columns') { span '3' }
        div(class: 'item three_columns') { span '3' }
        div(class: 'item three_columns') { span '3' }
      }

      div(class: 'grid docs_grid') {
        div(class: 'item four_columns') { span '4' }
        div(class: 'item four_columns') { span '4' }
        div(class: 'item four_columns') { span '4' }
      }

      div(class: 'grid docs_grid') {
        div(class: 'item six_columns') { span '6' }
        div(class: 'item three_columns') { span '3' }
        div(class: 'item three_columns') { span '3' }
      }
    }, hint: 'The grid currently uses a fixed-width gutter.', sub: true

    docs 'Nested', %{
      div(class: 'grid docs_grid') {
        div(class: 'item six_columns') { span '6' }
        div(class: 'item six_columns') {
          div(class: 'grid') {
            div(class: 'item four_columns') { span '4' }
            div(class: 'item four_columns') { span '4' }
            div(class: 'item four_columns') { span '4' }
          }
        }
      }
    }, hint: 'When nesting columns, make sure the total adds up to 12 columns or less.', sub: true

    hr

    docs 'Blank States', %{
      div(class: 'blank_slate') {
        i(class: 'fa fa-star')
        h4 'No ratings yet!'
        span 'Ratings give you a standard set of criteria to judge responses.'
        a 'Add your first rating', class: 'button primary'
      }
    }, hint: 'When there is no data to display in the current view, a well-designed blank state can prevent users from losing their momentum.'

    guide 'dont', 'do',
      %{
        <div class="docs_guide_row docs_guide_row_image">
          <div>
            <img src="/images/blankslate_dont.png">
          </div>
          <div>
            <img src="/images/blankslate_do.png">
          </div>
        </div>
        <div class="docs_guide_row">
          <div>
            <p><strong>Don&#39;t</strong> turn a blank state into a dead end. Provide users with a way to move forward.</p>
          </div>
          <div>
            <p><strong>Do</strong> use blank states to help explain the purpose of a page, and show users how to add data to it.</p>
          </div>
        </div>
      }.html_safe

    docs 'Footer', %{
      widget Dvl::Core::Views::Footer.new(application_name: 'DOBT Style Guide')
    }
  end
end
