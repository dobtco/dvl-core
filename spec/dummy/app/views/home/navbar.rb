class Views::Home::Navbar < Views::Base
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

    docs 'Navbar Badge', %{
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
                li {
                  a {
                    i(class: 'fa fa-bolt navbar_icon')
                    span.navbar_badge '1'
                  }
                }
              }
            }
          }
        }
      }
    }, full: true
  end
end
