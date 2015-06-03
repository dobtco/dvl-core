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
