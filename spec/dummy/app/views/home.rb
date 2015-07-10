class Views::Home < Views::Base
  def render_header
    div.hero {
      div.container {
        p {
          img(src: 'http://www.dobt.co/img/dobt_logo.png', alt: 'DOBT')
        }
        h1 'DOBT Style Guide'
        p 'We use these guidelines and shared components for everything we build, including commercial and internal apps.'
      }
    }
  end
end
