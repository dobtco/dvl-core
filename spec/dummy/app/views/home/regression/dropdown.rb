class Views::Home::Regression::Dropdown < Views::Layout
  def render_body
    simple_form_for :foo do |f|
      f.input(
        :bar,
        as: :dropdown_select,
        collection: [
          ['baz booz baz', '1'],
          ['feeez faow fozz', '2']
        ],
        include_blank: 'Blanky!'
      )
    end

    div(class: 'dropdown') {
      a(
        'Dropdown', class: 'button toggle',
        'data-toggle' => 'dropdown',
        href: '#'
      )

      div(class: 'dropdown_menu') {
        ul(class: 'dropdown_body') {
          li {
            a 'Option 1', href: '#'
          }
          li(class: 'divider') {
            a 'Option 2, with divider'
          }
          li {
            a(href: 'mailto:support@dobt.co') {
              span 'Contact support&hellip;'.html_safe, class: 'drop_rt_item'
              span(class: 'drop_rt_arrow') { i(class: 'fa fa-external-link') }
            }
          }
        }
      }
    }
  end
end
