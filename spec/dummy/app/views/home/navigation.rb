class Views::Home::Navigation < Views::Page
  def main
    h2 'Navigation'

    h3 'Navigation Bar'

    p 'The navigation bar should always take up the full page width. The examples below break at some viewport sizes, because they violate this rule.'

    docs 'Signed Out', %{
      nav(class: 'navbar') {
        div(class: 'container') {
          div(class: 'navbar_header') {
            a 'DOBT Style Guide', class: 'navbar_brand', href: '#'
            a "<i class='icon icon_burger'></i>".html_safe, class: 'navbar_toggle'
          }

          div(class: 'navbar_content_wrapper') {
            div(class: 'navbar_content navbar_content_secondary') {
              ul {
                li {
                  span {
                    a 'Sign in', class: 'button small primary'
                  }
                }
              }
            }
          }
        }
      }
    }, sub: true, hint: 'The product name in a navigation bar can be either text or a logo, but not both.'

    docs 'Signed In', %{
      nav(class: 'navbar') {
        div(class: 'container') {
          div(class: 'navbar_header') {
            a(class: 'navbar_brand', href: '#') {
              img src: 'https://www.dobt.co/img/dobt_logo.png'
            }
            a "<i class='icon icon_burger'></i>".html_safe, class: 'navbar_toggle'
          }

          div(class: 'navbar_content_wrapper') {
            div(class: 'navbar_content navbar_content_primary') {
              ul {
                li(class: 'active') {
                  a 'Dashboard'
                }
                li {
                  a 'Projects'
                }
              }
            }

            div(class: 'navbar_content navbar_content_secondary') {
              form(class: 'navbar_search_form') {
                input type: 'text', placeholder: 'Search...'
              }
              ul {
                li {
                  a {
                    span(class: 'navbar_full_i') {
                      i(class: 'icon icon_notifications navbar_icon')
                    }
                    span(class: 'navbar_collapsed_i') {
                      text 'Notifications'
                    }

                    span '1', class: 'navbar_badge'
                  }
                }
                li(class: 'dropdown dropdown_navbar') {
                  a(
                    'data-toggle' => 'dropdown',
                    href: '#'
                  ) {
                    span(class: 'navbar_full_i') {
                      i(class: 'icon icon_sync navbar_icon')
                    }
                    span(class: 'navbar_collapsed_i') {
                      text 'Loading State'
                    }
                  }

                  div(class: 'dropdown_menu') {
                    h3 'Loading State'
                    ul(class: 'dropdown_body') {
                      li(class: 'dropdown_loading') {
                        span(class: 'loader')
                      }
                    }
                  }
                }
                li(class: 'dropdown dropdown_navbar') {
                  a(
                    'data-toggle' => 'dropdown',
                    href: '#'
                  ) {
                    span(class: 'navbar_full_i') {
                      i(class: 'icon icon_file navbar_icon')
                    }
                    span(class: 'navbar_collapsed_i') {
                      text 'Default Dropdown'
                    }
                  }

                  div(class: 'dropdown_menu') {
                    h3 'Default Dropdown'
                    ul(class: 'dropdown_body') {
                      li { a 'Item 1', href: '#' }
                      li { a 'Item 2', href: '#' }
                      li { a 'Item 3', href: '#' }
                    }
                  }
                }
                li(class: 'dropdown dropdown_navbar') {
                  a(
                    'data-toggle' => 'dropdown',
                    href: '#'
                  ) {
                    img class: 'nav_avatar', src: '//dobt-captured.s3.amazonaws.com/ajb/richard_ayoade_-_Google_Search_2015-05-26_09-56-32.png_290290_2015-05-26_09-57-03.png'
                  }

                  div(class: 'dropdown_menu') {
                    h3 'My account'
                    ul(class: 'dropdown_body') {
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
    }, sub: true, hint: 'Use badges next to icons to notify the user of new information.'

    hr

    docs 'Sidebar (Navigation)', %{
      ul(class: 'sidebar_nav') {
        li(class: 'header') {
          text 'Steve McQueen'
          img(src: 'http://i.imgur.com/2WkSV2N.png')
        }
        li(class: 'active') {
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
            i(class: 'icon icon_external_link')
          }
        }
      }

      ul(class: 'sidebar_nav') {
        li(class: 'header') {
          text 'Statuses'
        }
        li {
          a {
            text 'Open'
            span '2', class: 'badge'
          }
        }
        li {
          a {
            text 'Rejected by the International Court of Justice in Hague, The Netherlands after a lengthy deliberation of multiple years'
            span '5,000', class: 'badge'
          }
        }
      }

      ul(class: 'sidebar_nav') {
        li(class: 'header') {
          text 'Labels'
        }
        li {
          a {
            div "Label 1", class: 'label'
            span "15", class: 'badge'
          }
        }
        li {
          a {
            div "Label 2", class: 'label'
            span "27", class: 'badge'
          }
        }
      }
      ul(class: 'sidebar_sub_actions') {
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
      ul(class: 'tabs') {
        li(class: 'active') {
          a 'The Form', href: '#form', 'data-toggle' => 'tab'
        }
        li {
          a 'Ratings', href: '#ratings', 'data-toggle' => 'tab'
        }
        li {
          a 'Settings', href: '#settings', 'data-toggle' => 'tab'
        }
      }

      div 'form', class: 'tab_pane active', id: 'form'
      div 'ratings', class: 'tab_pane', id: 'ratings'
      div 'settings', class: 'tab_pane', id: 'settings'
    }, hint: %{
      Add tabs below a <a href="/headers#heading 3">page subheader</a> to let users navigate between different sections
      of the same view. You can optionally include <code>dvl/components/tabs.js</code> if you intend to switch the tab content
      on the client-side.
    }.squish.html_safe

  end
end
