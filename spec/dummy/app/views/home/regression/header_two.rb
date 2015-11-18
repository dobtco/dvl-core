class Views::Home::Regression::HeaderTwo < Views::Base
  def stylesheets
    super

    style %{
      body {
        padding: 50px;
      }
    }.html_safe
  end

  def render_body
    div.page_header.with_back_arrow {
      a.page_header_back_arrow(href: '/regression/header_one', title: 'All responses', 'data-toggle' => 'tooltip') {
        i(class: 'fa fa-arrow-circle-o-left')
      }

      h2 {
        a.page_header_context '2015 Civic Innovation Conference', href: '#'
        text 'Max Ophüls'
      }
    }

    a 'Go to first page', href: '/regression/header_one'
  end
end
