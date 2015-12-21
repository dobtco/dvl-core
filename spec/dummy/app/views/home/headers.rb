class Views::Home::Headers < Views::Page
  def main

    h2 'Headers'

    h3 'Page Header with Navigation'

    docs 'Rename Button', %{
      div(class: 'page_header') {
        h2 {
          a 'Sales Leads', href: '#'
          a(class: 'button subtle mini') {
            i(class: 'fa fa-pencil')
          }
        }
        div(class: 'page_header_secondary') {
          ul {
            li {
              a 'Stages'
            }

            li(class: 'active') {
              a 'Contacts'
            }

            li {
              a 'Messages'
            }
          }
        }
        div(class: 'page_header_tertiary') {
          ul {
            li {
              a {
                i(class: 'fa fa-pencil')
                text 'Edit'
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
    }, sub: true, hint: %{The header title can optionally be a link.}.html_safe

    docs 'Secondary Action and Back Arrow', %{
      div(class: 'page_header with_back_arrow') {
        a(class: 'page_header_back_arrow', title: 'Dashboard', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Meeting request', href: '#'
        }

        div(class: 'page_header_secondary') {
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
        div(class: 'page_header_tertiary') {
          ul {
            li(class: 'active') {
              a {
                i(class: 'fa fa-pencil')
                text 'Edit'
              }
            }

            li {
              a {
                text 'Settings'
              }
            }
          }

          a(class: 'button mini info icon_r', href: '#') {
            text 'View '
            i(class: 'fa fa-long-arrow-right')
          }
        }
      }
    }, sub: true

    docs 'Pagination', %{
      div(class: 'page_header with_back_arrow with_pagination') {
        a(class: 'page_header_back_arrow', title: 'All responses', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        h2 {
          a 'Max Ophüls', href: '#'
        }

        div(class: 'page_header_secondary') {
          ul {
            li(class: 'active') {
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
        div(class: 'pagination_compact pagination_compact_header') {
          span "#94 of 566"

          ul {
            li { span{text '&larr;'.html_safe}}
            li { a(href: '#'){text '&rarr;'.html_safe}}
          }
        }
      }
    }, sub: true

    hr

    docs 'Basic Page Header', %{
      div(class: 'page_header') {
        h2 'Projects'

        a 'New project', class: 'button primary'
      }
    }

    h3 'Page Subheaders'

    docs 'Heading 3', %{
      div(class: 'page_subheader') {
        h3 'Debra Granik'

        div(class: 'page_subheader_actions') {
          a(class: 'page_subheader_link') {
            i(class: 'fa fa-comments')
            text ' 2 comments'
          }
          a 'Request a revision', class: 'button info'
        }
      }
    }, hint: 'This style of subheader should never contain icons.', sub: true

    docs 'Heading 4', %{
      div(class: 'page_subheader') {
        h4 {
          i(class: 'fa fa-file-text')
          text ' '
          text 'Attachments'
        }
        div(class: 'page_subheader_actions') {
          a 'View all', class: 'page_subheader_link'
          a 'Edit', class: 'button small'
        }
      }
    }, hint: 'Icons in this style are optional.', sub: true

    hr

    h3 'Header with Search Bar'

    p 'Use this header for standalone pages which do not require navigation.'

    docs 'Default', %{
      div(class: 'header_h2_search') {
        h2 'Your projects'
        form(class: 'filter_form') {
          div(class: 'filter_form_search_wrapper') {
            i(class: 'fa fa-search')
            a(href: '#') {
              i(class: 'fa fa-times-circle filter_form_icon_right')
            }
            input(type: 'text', placeholder: 'Search your projects')
          }
          button 'Search', class: 'button'
        }
      }
    }, sub: true

    docs 'Query entered', %{
      div(class: 'header_h2_search') {
        h2 'Your projects'
        form(class: 'filter_form with_query') {
          div(class: 'filter_form_search_wrapper') {
            i(class: 'fa fa-search')
            a(href: '#') {
              i(class: 'fa fa-times-circle filter_form_icon_right')
            }
            input(type: 'text', placeholder: 'Search your projects', value: 'Innovation Challenge')
          }
          button 'Search', class: 'button'
        }
      }
    }, sub: true
  end
end
