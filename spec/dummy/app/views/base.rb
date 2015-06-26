class Views::Base < Erector::Widget
  def stylesheets(manifest = 'application')
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag manifest, media: 'all'
  end

  def javascripts
    script src: '//code.jquery.com/jquery-1.11.1.min.js'
    javascript_include_tag 'application'
    script src: '//use.typekit.net/ckb1dps.js'
    script %{
      try{Typekit.load();}catch(e){}
    }
    script %{
      $(function(){
        $('[data-toggle="tooltip"]').tooltip()
        $('body').styledSelect({blank: 'Choose an option'})
        $('body').styledControls()
        $('body').dropdownSelect({blank: 'Choose an option'})
      });
    }.html_safe
  end

  def content
    rawtext '<!doctype html>'
    html {
      head {
        stylesheets
        javascripts
      }
      body {
        div.hero {
          div.container {
            p {
              img(src: 'http://www.dobt.co/img/dobt_logo.png', alt: 'DOBT')
            }
            h1 'DOBT Style Guide'
            p 'We use these guidelines and shared components for everything we build, including commercial and internal apps.'
          }
        }

        a.sr_only 'Skip to content', href: '#content'

        div.content!
        div.container {
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
        }
      }
    }
  end

  private

  def pages
    {
      'Base Styles' => '/',
      'Color' => '/color',
      'Layout' => '/layout',
      'Data' => '/data',
      'Forms' => '/forms',
      'Navigation' => '/navigation',
      'Components' => '/components',
      'Splash' => '/splash'
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

  def docs(name, codeString, opts = {})

    div.docs_item {
      h3 name, id: name.downcase

      if opts[:hint]
        p opts[:hint]
      end

      eval(codeString)

      div.docs_col {
        label.docs_toggle_label(for: "docs_code_#{name.downcase}") {
          text 'View source'
        }
        input(class: 'docs_toggle_input', id: "docs_code_#{name.downcase}", type: 'checkbox')

        div.docs_code {
          div.docs_code_header 'Erector source code'
          pre codeString.strip_heredoc.strip
        }
      }
    }

    hr
  end
end
