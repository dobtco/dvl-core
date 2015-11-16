class Views::Home::Headers < Views::Page
  def main

    h2 'Headers'

    docs 'Page Header - Basic', %{
      div.page_header {
        h2 'Projects'

        a.button.primary 'New project'
      }
    }, sub: true

    docs 'Page Header - With secondary / tertiary navigation and rename button', %{
      div.page_header {
        h2 {
          text 'Sales Leads'
          a.button.subtle.mini {
            i(class: 'fa fa-pencil')
          }
        }
        div.page_header_secondary {
          ul {
            li {
              a 'Stages'
            }

            li.active {
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
                text 'Edit'
              }
            }

            li {
              a {
                text 'Settings'
              }
            }
          }
          a.button.mini.info.icon_r(href: '#') {
            text 'View '
            i(class: 'fa fa-long-arrow-right')
          }
        }
      }
    }, sub: true, hint: %{The header title can optionally be a link.}.html_safe

    docs 'Page Header - With back arrow and button', %{
      div.page_header.with_back_arrow {
        a.page_header_back_arrow(title: 'All responses', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        a.page_header_context '2015 Civic Innovation Conference', href: '#'
        h2 'Message Presets'

        a.button.info 'Add a preset'
      }
    }, sub: true

    docs 'Page Header - With back arrow and pagination', %{
      div.page_header.with_back_arrow.with_pagination {
        a.page_header_back_arrow(title: 'All responses', 'data-toggle' => 'tooltip') {
          i(class: 'fa fa-arrow-circle-o-left')
        }

        a.page_header_context '2015 Civic Innovation Conference', href: '#'
        h2 'Max Ophüls'

        div.pagination_compact.pagination_compact_header {
          span "#94 of 566"

          ul {
            li { span{text '&larr;'.html_safe}}
            li { a(href: '#'){text '&rarr;'.html_safe}}
          }
        }
      }
    }, sub: true

    docs 'Page Subheader - Heading 3', %{
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
    }, hint: 'This style of subheader should never contain icons.', sub: true

    docs 'Page Subheader - Heading 4', %{
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
    }, hint: 'Icons in this style are optional.', sub: true

    docs 'Page Header - With searchbar', %{
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
    }, hint: 'Use this header for standalone pages which do not require navigation.', sub: true

    docs 'Page Header - With searchbar (query entered)', %{
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
    }, sub: true
  end
end
