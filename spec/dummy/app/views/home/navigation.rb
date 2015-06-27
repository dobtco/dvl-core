class Views::Home::Navigation < Views::Base
  def main
    h2 'Navigation'

    docs 'Navbar', %{
      h4 'Signed Out'
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

      h4 'Signed In'

      nav.navbar {
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
    }


    docs 'Page Header with Secondary and Tertiary Nav', %{
      div.page_header {
        h2 {
          a 'Page header', href: '#'
        }
        div.page_header_secondary {
          ul {
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
        }
        div.page_header_tertiary {
          ul {
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
      }
    }, full: true, hint: '<h2> can optionally contain an <a> tag inside.'

    docs 'Page Header with button and back arrow', %{
      div.page_header.with_back_arrow {
        a.page_header_back_arrow(title: 'Back to account', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Page header', href: '#'
        }

        div.page_header_secondary {
          ul {
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
        }
        div.page_header_tertiary {
          ul {
            li {
              a(href: '#') {
                text 'A thing'
              }
            }

            li {
              a(href: '#') {
                text 'Another thing'
              }
            }
          }

          a.button.info.long_arrow 'View project', href: '#'
        }
      }
    }, full: true

    docs 'Page Header with pagination', %{
      div.page_header.with_back_arrow {
        a.page_header_back_arrow(title: 'Back to account', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Page header', href: '#'
        }

        div.page_header_secondary {
          ul {
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
        }
        div.pagination.pagination_page_header {
          span.pagination_status "Showing <strong>1</strong> of <strong>123</strong>".html_safe

          ul {
            li { span{text '‹'}}
            li { a(href: '#'){text '›'}}
          }
        }
      }
    }, full: true

    docs 'Sidebar Navigation', %{
      ul.sidebar_nav {
        li.header {
          text 'Header Item'
          img(src: '//dobt-misc.s3.amazonaws.com/headshots/adam.jpg')
        }
        li.active {
          a {
            text 'Item 1'
            span.badge '500'
          }
        }
        li {
          a {
            text 'Item 2'
            span.badge '0'
          }
        }
        li {
          a {
            text 'Item 3: an example of a very long item which wraps to multiple lines.'
            span.badge '400'
          }
        }
        li {
          a {
            div.label "Yoooooo"
            span.badge "500"
          }
        }
      }
    }

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
