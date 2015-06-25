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
                li.header 'Navigation'
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
      'Index' => '/',
      'Forms' => '/forms',
      'Buttons' => '/buttons',
      'Flashes' => '/flashes',
      'Footer' => '/footer',
      'Splash' => '/splash',
      'Navigation' => '/navigation',
      'Grid' => '/grid',
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
              li.dropdown.dropdown_navbar {
                a(
                  'data-toggle' => 'dropdown',
                  href: '#'
                ) {
                  span.navbar_full_i {
                    i(class: 'fa fa-search navbar_icon')
                  }
                  span.navbar_collapsed_i {
                    text 'Search'
                  }
                }

                div.dropdown_menu(role: 'menu') {
                  h3 'Loading forever'
                  ul.dropdown_body {
                    li.dropdown_loading {
                      span {
                        i(class: 'fa fa-spin fa-refresh')
                      }
                    }
                  }
                }
              }
              li.dropdown.dropdown_navbar {
                a(
                  'data-toggle' => 'dropdown',
                  href: '#'
                ) {
                  span.navbar_full_i {
                    i(class: 'fa fa-file-text navbar_icon')
                  }
                  span.navbar_collapsed_i {
                    text 'Projects'
                  }
                }

                div.dropdown_menu(role: 'menu') {
                  h3 'Projects'
                  ul.dropdown_body {
                    li { a 'Item', href: '#' }
                  }
                }
              }
              li.dropdown.dropdown_navbar {
                a(
                  'data-toggle' => 'dropdown',
                  href: '#'
                ) {
                  img.nav_avatar src: '//dobt-captured.s3.amazonaws.com/ajb/richard_ayoade_-_Google_Search_2015-05-26_09-56-32.png_290290_2015-05-26_09-57-03.png'
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

    div(class: "docs #{opts[:full] ? 'docs_layout_full' : 'docs_layout_split'}") {
      div.docs_col {
        div.docs_preview {
          if opts[:hint]
            p opts[:hint]
          end

          eval(codeString)
        }
      }

      div.docs_col {
        div.docs_code {
          pre codeString.strip_heredoc.strip
        }
      }
    }
  end
end
