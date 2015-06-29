class Views::Home::Navigation < Views::Base
  def main
    h2 'Navigation'

    h3 'Navigation Bar'

    p 'The navigation bar should always take up the full page width. The examples below break at some viewport sizes, because they violate this rule.'

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
    }, sub: '', hint: 'The product name in a navigation bar can be either text or a logo, but not both.'

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
    }, sub: '', hint: 'Use badges next to icons to notify the user of new information.'

    hr

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
            text 'Rejected by the International Court of Justice in Hague, The Netherlands after a lengthy deliberation of multiple years'
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

    docs 'Tabs', %{
      ul.tabs {
        li.active {
          a 'The Form'
        }
        li {
          a 'Ratings'
        }
        li {
          a 'Settings'
        }
      }
    }, hint: %{Add tabs below a <a href="/headings#heading 3">page subheader</a> to let users navigate between different sections of the same view.}.html_safe

  end
end
