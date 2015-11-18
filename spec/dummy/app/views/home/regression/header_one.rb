class Views::Home::Regression::HeaderOne < Views::Base
  def stylesheets
    super

    style %{
      body {
        padding: 50px;
      }
    }.html_safe
  end

  def render_body
    div.page_header {
      h2 {
        text 'Max Ophüls'
      }
    }

    a 'Go to another page', href: '/regression/header_two'
  end
end
