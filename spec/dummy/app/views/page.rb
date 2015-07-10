class Views::Page < Views::Base
  def render_header
    div.hero.hero_compact {
      div.container {
        h1 { a 'DOBT Style Guide', href: '/' }
      }
    }
  end
end
