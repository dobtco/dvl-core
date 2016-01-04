class Views::Page < Views::Layout
  def render_header
    div(class: 'hero hero_compact') {
      div(class: 'container') {
        h1 { a 'DOBT Style Guide', href: '/' }
      }
    }
  end
end
