class Views::Base < Erector::Widget
  def stylesheets(manifest = 'application')
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet'
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag manifest, media: 'all'
  end

  def javascripts
    script src: '//code.jquery.com/jquery-1.11.1.min.js'
    javascript_include_tag 'application'
    script %{
      $(function(){
        $('[data-toggle="tooltip"]').tooltip()
        $('body').styledSelect()
        $('body').styledControls()
        $('body').dropdownSelect()
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
        render_navbar

        div.container {
          div.preview_sidebar {
            ul {
              pages.each do |name, path|
                li(class: url_for == path ? 'active' : nil) {
                  a name, href: path
                }
              end
            }
          }

          div.preview_main {
            main
          }
        }
      }
    }
  end

  private

  def pages
    {
      'Index' => '/',
      'Forms' => '/forms',
      'Flashes' => '/flashes',
      'Footer' => '/footer',
      'Splash' => '/splash',
      'Navbar' => '/navbar'
    }
  end

  def render_navbar
    nav.navbar.navbar_sticky {
      div.container {
        div.navbar_header {
          a.navbar_brand 'DOBT Style Guide', href: '#'
          a.navbar_toggle "<i class='fa fa-reorder'></i>".html_safe
        }

        div.navbar_content_wrapper {
          div.navbar_content.navbar_content_primary {
            ul {
              li.active {
                a 'Main styles'
              }
              li {
                a 'Something else'
              }
            }
          }

          div.navbar_content.navbar_content_secondary {
            form.navbar_search_form {
              input type: 'text', placeholder: 'Search...'
            }
            ul {
              li {
                a 'Link One'
              }
              li {
                a 'Link Two'
              }
              li.dropdown {
                a(
                  'data-toggle' => 'dropdown',
                  href: '#'
                ) {
                  img.nav_avatar src: '//dobt-misc.s3.amazonaws.com/headshots/adam.jpg'
                }

                div.dropdown_menu(role: 'menu') {
                  h3 'My account'
                  ul.dropdown_body {
                    li { a 'Edit profile', href: '#' }
                    li { a 'Sign out', href: '#' }
                  }
                }
              }
            }
          }
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

  def docs(name, codeString, opts = {})
    div.section_header name, id: name.downcase

    div.grid.gutter_none.docs_preview_grid {
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
