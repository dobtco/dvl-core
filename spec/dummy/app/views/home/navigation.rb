class Views::Home::Navigation < Views::Base
  def main
    docs 'Navbar', %{
      nav.navbar {
        div.container {
          div.navbar_header {
            a.navbar_brand(href: '#') {
              img src: 'http://www.dobt.co/img/dobt_logo.png'
            }
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
                li {
                  a {
                    i(class: 'fa fa-bolt navbar_icon')
                    span.navbar_badge '1'
                  }
                }
              }
            }
            div.navbar_content.navbar_content_secondary {
              ul {
                li {
                  span {
                    a.button.primary 'Sign in'
                  }
                }
              }
            }
          }
        }
      }
    }, full: true

    docs 'Page Header with Secondary and Tertiary Nav', %{
      div.page_header {
        h2 {
          a 'Page header', href: '#'
        }

        ul.page_header_secondary_nav {
          li {
            a 'Secondary nav'
          }

          li {
            a 'A thing'
          }

          li {
            a 'Another thing'
          }
        }

        ul.page_header_tertiary_nav {
          li {
            a {
              i(class: 'fa fa-pencil')
              text 'Tertiary nav'
            }
          }

          li {
            a {
              i(class: 'fa fa-file')
              text 'A thing'
            }
          }

          li {
            a {
              text 'Another thing'
            }
          }
        }
      }
    }, full: true, hint: '<h2> can optionally contain an <a> tag inside.'

    docs 'Page subheader (h3) and actions', %{
      div.page_subheader {
        h3 'Subheader'

        div.page_subheader_actions {
          a.page_subheader_link 'An action'
          a.button.info 'Another action'
        }
      }
    }, full: true

    docs 'Page subheader (h4) with icon', %{
      div.page_subheader {
        h4 {
          i(class: 'fa fa-star')
          text ' '
          text 'Ratings'
        }
      }
    }, full: true, hint: 'Page subheaders can use either an <h3> or <h4>.'
  end
end
