class Views::Home::Regression::Dropdown < Views::Base
  def render_body
    div.dropdown {
      a.button.toggle(
        'Dropdown',
        'data-toggle' => 'dropdown',
        href: '#'
      )

      div.dropdown_menu(role: 'menu') {
        ul.dropdown_body {
          li {
            a 'Option 1', href: '#'
          }
          li.divider {
            a 'Option 2, with divider'
          }
          li {
            a(href: 'mailto:support@dobt.co') {
              span.drop_rt_item 'Contact support&hellip;'.html_safe
              span.drop_rt_arrow { i(class: 'icon icon_external_link') }
            }
          }
        }
      }
    }
  end
end
