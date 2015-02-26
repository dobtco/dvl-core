class Views::Base < Erector::Widget
  def stylesheets
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet'
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag 'application', media: 'all'
  end

  def javascripts
    script src: '//code.jquery.com/jquery-1.11.1.min.js'
    javascript_include_tag 'application'
    script %{
      $('[data-toggle="tooltip"]').tooltip()
      $('body').styledSelect()
      $('body').styledControls()
    }.html_safe
  end

  def content
    rawtext '<!doctype html>'
    html {
      head {
        stylesheets
      }
      body {
        render_nav

        hr

        main
        javascripts
      }
    }
  end

  private

  def render_nav
    nav {
      ul {
        test_views.each do |x|
          route = x.split('/').last.split('.').first

          li {
            a route, href: route
          }
        end
      }
    }
  end

  def test_views
    Dir["#{Rails.root}/app/views/home/*.rb"]
  end

  def docs(name, codeString, opts = {})
    div.section_header name, id: name.downcase

    div.grid {
      div(class: "item #{opts[:full] ? '' : 'six_columns'}") {
        div.docs_preview {
          eval(codeString)
        }
      }

      div(class: "item code_item #{opts[:full] ? '' : 'six_columns'}") {
        div.docs_code {
          pre codeString.strip_heredoc.strip
        }
      }
    }
  end
end
