class Views::Home::Headers < Views::Page
  def main

    h2 'Headers'

    h3 'Page Header with Navigation'

    docs 'Rename Button', %{
      div.page_header {
        h2 {
          a 'Sales Leads', href: '#'
          a.button.subtle.mini {
            i(class: 'fa fa-pencil')
          }
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
    }, sub: '', hint: %{The header title can optionally be a link.}.html_safe

    docs 'Secondary Action and Back Arrow', %{
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

    docs 'Pagination', %{
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

    hr

    docs 'Basic Page Header', %{
      div.page_header {
        h2 'Projects'

        a.button.primary 'New project'
      }
    }

    h3 'Page Subheaders'

    docs 'Heading 3', %{
      div.page_subheader {
        h3 'Debra Granik'

        div.page_subheader_actions {
          a.page_subheader_link {
            i(class: 'fa fa-comments')
            text ' 2 comments'
          }
          a.button.info 'Request a revision'
        }
      }
    }, hint: 'This style of subheader should never contain icons.', sub: ''

    docs 'Heading 4', %{
      div.page_subheader {
        h4 {
          i(class: 'fa fa-file-text')
          text ' '
          text 'Attachments'
        }
        div.page_subheader_actions {
          a.page_subheader_link 'View all'
          a.button.small 'Edit'
        }
      }
    }, hint: 'Icons in this style are optional.', sub: ''

    hr

    h3 'Header with Search Bar'

    p 'Use this header for standalone pages which do not require navigation.'

    docs 'Default', %{
      div.header_h2_search {
        h2 'Your projects'
        form.filter_form {
          div.filter_form_search_wrapper {
            i(class: 'fa fa-search')
            a(href: '#') {
              i(class: 'fa fa-times-circle filter_form_icon_right')
            }
            input(type: 'text', placeholder: 'Search your projects')
          }
          button.button 'Search'
        }
      }
    }, sub: ''

    docs 'Query entered', %{
      div.header_h2_search {
        h2 'Your projects'
        form.filter_form.with_query {
          div.filter_form_search_wrapper {
            i(class: 'fa fa-search')
            a(href: '#') {
              i(class: 'fa fa-times-circle filter_form_icon_right')
            }
            input(type: 'text', placeholder: 'Search your projects', value: 'Innovation Challenge')
          }
          button.button 'Search'
        }
      }
    }, sub: ''
  end
end
