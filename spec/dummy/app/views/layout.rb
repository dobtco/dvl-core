class Views::Layout < Views::Base
  def stylesheets(manifest = 'application')
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag manifest, media: 'all'
  end

  def javascripts
    script src: '//code.jquery.com/jquery-2.2.3.min.js'
    javascript_include_tag 'application'
    script src: '//use.typekit.net/ckb1dps.js'
    script 'try{Typekit.load();}catch(e){}'.html_safe
  end

  def content
    rawtext '<!doctype html>'
    html(lang: 'en') {
      head {
        title 'DOBT Style Guide'
        meta(name: 'viewport', content: 'width=device-width')
        stylesheets
        javascripts
        rawtext '<!--[if lt IE 9]><script src="//d2yxgjkkbvnhdt.cloudfront.net/dist/shim.js"></script><![endif]-->'
      }
      body {
        widget Dvl::Core::Views::Flashes.new(flash: flash)
        render_body
        rawtext '<!--[if lt IE 9]><script src="//d2yxgjkkbvnhdt.cloudfront.net/dist/polyfills.js"></script><![endif]-->'
      }
    }
  end

  private

  def render_body
    a 'Skip to content', class: 'visuallyhidden focusable', href: '#content'

    render_header

    div(id: 'content')
    div(class: 'container primary_container') {
      div(class: 'grid') {
        div(class: 'item desk_three_columns') {
          ul(class: 'sidebar_nav') {
            li 'Table of Contents', class: 'header'
            Rails.configuration.x.pages.each do |name, path|
              li(class: url_for == path ? 'active' : nil) {
                a name, href: path
              }
            end
          }
        }

        div(class: 'item desk_nine_columns') {
          main
        }
      }
    }
  end

  # def test_routes
  #   test_views.map do |x|
  #     x.split('/').last.split('.').first
  #   end
  # end

  # def test_views
  #   Dir["#{Rails.root}/app/views/home/*.rb"]
  # end

  def docs(name, code_string, opts = {})
    div(class: opts[:sub] ? 'docs_item docs_item_sub' : 'docs_item') {

      if opts[:sub]
        h4 name, id: name.parameterize.underscore
      else
        h3 name, id: name.parameterize.underscore
      end

      if opts[:hint]
        p opts[:hint]
      end

      eval(code_string)

      a 'Toggle source', class: 'button_uppercase docs_toggle_button', href: '#'

      div(class: 'docs_code', style: 'display:none;') {
        div 'Fortitude source code', class: 'docs_code_header'
        pre code_string.strip_heredoc.strip
      }
    }

  end

  def guide(dodont1, content1, dodont2, content2, opts = {})
    div(class: 'docs_guide') {
      div(class: 'docs_guide_grid') {
        div(class: 'docs_guide_item') {
          div(class: dodont1) {
            rawtext content1
          }
        }
        div(class: 'docs_guide_item') {
          div(class: dodont2) {
            rawtext content2
          }
        }
      }
      if opts[:hint]
        p opts[:hint], class: 'form_hint'
      end
    }
  end
end
