class Views::Page < Views::Base
  def render_header
    nav.navbar {
      div.container {
        div.navbar_header {
          a.navbar_brand 'DOBT Style Guide', href: '/'
        }
      }
    }
  end
end
