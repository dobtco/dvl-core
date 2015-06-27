class Views::Home::Navigation < Views::Base
  def main
    h2 'Navigation'

    h3 'Navbar'

    docs 'Signed Out', %{
      nav.navbar {
        div.container {
          div.navbar_header {
            a.navbar_brand 'DOBT Style Guide', href: '#'
            a.navbar_toggle "<i class='fa fa-reorder'></i>".html_safe
          }

          div.navbar_content_wrapper {
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
    }, sub: '', hint: 'The product name in a navbar can be either text or a logo, but not both.'

    docs 'Signed In', %{
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
                  a 'Dashboard'
                }
                li {
                  a 'Projects'
                }
              }
            }

            div.navbar_content.navbar_content_secondary {
              form.navbar_search_form {
                input type: 'text', placeholder: 'Search...'
              }
              ul {
                li {
                  a {
                    span.navbar_full_i {
                      i(class: 'fa fa-bolt navbar_icon')
                      span.navbar_badge '1'
                    }
                    span.navbar_collapsed_i {
                      text 'Notifications'
                    }
                  }
                }
                li.dropdown.dropdown_navbar {
                  a(
                    'data-toggle' => 'dropdown',
                    href: '#'
                  ) {
                    span.navbar_full_i {
                      i(class: 'fa fa-refresh navbar_icon')
                    }
                    span.navbar_collapsed_i {
                      text 'Loading State'
                    }
                  }

                  div.dropdown_menu(role: 'menu') {
                    h3 'Loading State'
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
                      text 'Default Dropdown'
                    }
                  }

                  div.dropdown_menu(role: 'menu') {
                    h3 'Default Dropdown'
                    ul.dropdown_body {
                      li { a 'Item 1', href: '#' }
                      li { a 'Item 2', href: '#' }
                      li { a 'Item 3', href: '#' }
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
    }, sub: '', hint: 'Use badges next to navbar icons to notify the user of new information.'

    hr
    
    h3 'Page Header'

    docs 'With Navigation', %{
      div.page_header {
        h2 {
          a 'Sales Leads', href: '#'
        }
        div.page_header_secondary {
          ul {
            li {
              a 'Stages'
            }

            li {
              a 'Contacts'
            }

            li {
              a 'Messages'
            }
          }
        }
        div.page_header_tertiary {
          ul {
            li {
              a {
                i(class: 'fa fa-pencil')
                text 'Edit campaign'
              }
            }

            li {
              a {
                text 'Settings'
              }
            }
          }
        }
      }
    }, sub: '', hint: %{The title can optionally contain a <code>&lt;a&gt;</code> tag.}.html_safe

    docs 'With Button and Back Arrow', %{
      div.page_header.with_back_arrow {
        a.page_header_back_arrow(title: 'Dashboard', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Meeting request', href: '#'
        }

        div.page_header_secondary {
          ul {
            li {
              a 'Stages'
            }

            li {
              a 'Contacts'
            }

            li {
              a 'Messages'
            }
          }
        }
        div.page_header_tertiary {
          ul {
            li {
              a {
                i(class: 'fa fa-pencil')
                text 'Edit campaign'
              }
            }

            li {
              a {
                text 'Settings'
              }
            }
          }

          a.button.info.long_arrow 'View campaign', href: '#'
        }
      }
    }, sub: ''

    docs 'With Pagination', %{
      div.page_header.with_back_arrow {
        a.page_header_back_arrow(title: 'All responses', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Max Ophüls', href: '#'
        }

        div.page_header_secondary {
          ul {
            li {
              a 'Responses'
            }

            li {
              a 'Questions'
            }

            li {
              a 'Messages'
            }

            li {
              a 'Settings'
            }
          }
        }
        div.pagination.pagination_page_header {
          span.pagination_status "#94 of 566"

          ul {
            li { span{text '&larr;'.html_safe}}
            li { a(href: '#'){text '&rarr;'.html_safe}}
          }
        }
      }
    }, sub: ''

    docs 'Sidebar (Navigation)', %{
      ul.sidebar_nav {
        li.header {
          text 'Steve McQueen'
          img(src: 'http://i.imgur.com/2WkSV2N.png')
        }
        li.active {
          a {
            text 'Profile'
          }
        }
        li {
          a {
            text 'Preferences'
          }
        }
        li {
          a {
            text 'Billing'
          }
        }
      }

      ul.sidebar_nav {
        li.header {
          text 'Statuses'
        }
        li {
          a {
            text 'Open'
            span.badge '2'
          }
        }
        li {
          a {
            text 'Discarded, but pending review by James Joyce. We need to exhume the body first, though'
            span.badge '5,000'
          }
        }
      }

      ul.sidebar_nav {
        li.header {
          text 'Labels'
        }
        li {
          a {
            div.label "Label 1"
            span.badge "15"
          }
        }
        li {
          a {
            div.label "Label 2"
            span.badge "27"
          }
        }
      }
      ul.sidebar_sub_actions {
        li {
          a 'Grant permission to edit'
        }
        li {
          a 'Export'
        }
        li {
          a 'Archive'
        }
      }
    }, hint: 'You can place secondary / tertiary actions for a page under any sidebar, including this one.'

    h3 'Page Sub-Headers'

    docs 'Heading 3', %{
      div.page_subheader {
        h3 'Subheader'

        div.page_subheader_actions {
          a.page_subheader_link 'An action'
          a.button.info 'Another action'
        }
      }
    }, sub: ''

    docs 'Heading 4', %{
      div.page_subheader {
        h4 {
          i(class: 'fa fa-star')
          text ' '
          text 'Ratings'
        }
      }
    }, sub: ''
  end
end
