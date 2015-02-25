class Views::Base < Erector::Widget
  def content
    rawtext '<!doctype html>'
    html {
      head {
        link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
        link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet', type: 'text/css'
        link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet', type: 'text/css'
        stylesheet_link_tag 'application', media: 'all'
        style(type: 'text/css') {
          rawtext %{
            body {
              padding: 0 1rem 1rem;
              background: white;
            }

            .section_header {
              font-size: 1.6rem;
              padding: 1rem 0 0.25rem;
              margin-bottom: 1rem;
              border-bottom: 1px solid #eee;
            }
          }
        }
      }
      body {
        render_nav

        hr

        main
        script src: '//code.jquery.com/jquery-1.11.1.min.js'
        javascript_include_tag 'application'
        script %{
          $('[data-toggle="tooltip"]').tooltip()
          $('body').styledSelect()
          $('body').styledControls()
        }.html_safe
      }
    }
  end

  private

  def render_nav
    nav {
      ul {
        test_views.each do |x|
          li {
            a x.split('/').last,
              href: x.split('/').last.split('.').first
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
      if opts[:full]
        div.item {
          pre codeString.strip_heredoc.strip
        }

        div.item {
          eval(codeString)
        }
      else
        div.item.six_columns {
          eval(codeString)
        }

        div.item.six_columns {
          pre codeString.strip_heredoc.strip
        }
      end
    }
  end
end
