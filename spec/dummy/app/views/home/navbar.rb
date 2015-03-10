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
                li.dropdown {
                  a(
                    'data-toggle' => 'dropdown'
                  ) {
                    img.nav_avatar src: '//dobt-misc.s3.amazonaws.com/headshots/adam.jpg'
                  }

                  div.dropdown_menu {
                    ul.dropdown_body {
                      li.dropdown_header 'My account'
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
    }, full: true
  end
end
