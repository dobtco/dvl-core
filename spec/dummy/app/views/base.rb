class Views::Base < Erector::Widget
  def stylesheets(manifest = 'application')
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag manifest, media: 'all'
  end

  def javascripts
    script src: '//code.jquery.com/jquery-1.11.1.min.js'
    javascript_include_tag 'application'
    script src: '//use.typekit.net/ckb1dps.js'
    script 'try{Typekit.load();}catch(e){}'.html_safe
  end

  def content
    rawtext '<!doctype html>'
    html {
      head {
        title 'DOBT Style Guide'
        meta(name: 'viewport', content: 'width=device-width')
        stylesheets
        javascripts
        rawtext '<!--[if lt IE 9]><script src="//d2yxgjkkbvnhdt.cloudfront.net/dist/shim.js"></script><![endif]-->'
      }
      render_body
    }
  end

  private

  def render_body
    body {
      render_header

      a.visuallyhidden.focusable 'Skip to content', href: '#content'

      div.content!
      div.container.primary_container {
        div.grid {
          div.item.desk_three_columns {
            ul.sidebar_nav {
              li.header 'Table of Contents'
              pages.each do |name, path|
                li(class: url_for == path ? 'active' : nil) {
                  a name, href: path
                }
              end
            }
          }

          div.item.desk_nine_columns {
            main
          }
        }
        rawtext '<!--[if lt IE 9]><script src="//d2yxgjkkbvnhdt.cloudfront.net/dist/polyfills.js"></script><![endif]-->'
      }
    }
  end

  def pages
    {
      'Base Styles' => '/',
      'Color' => '/color',
      'Layout' => '/layout',
      'Data' => '/data',
      'Forms' => '/forms',
      'Headers' => '/headers',
      'Navigation' => '/navigation',
      'Components' => '/components',
      'Splash Pages' => '/splash'
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

      a.button.small.docs_toggle_button 'Toggle source'

      div.docs_code(style: 'display:none;') {
        div.docs_code_header 'Erector source code'
        pre code_string.strip_heredoc.strip
      }
    }

  end

  def guide(code_do, guide_do, code_dont, guide_dont)
    h5 'Rule of Thumb'

    div.docs_guide {
      div.docs_guide_col {
        div.docs_guide_example code_do
        p.docs_guide_explain guide_do
      }
      div.docs_guide_col {
        div.docs_guide_example code_dont
        p.docs_guide_explain guide_dont
      }
    }

    hr
  end
end
