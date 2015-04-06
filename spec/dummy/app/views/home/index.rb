class Views::Home::Index < Views::Base
  def main
    docs 'Code', %{
      pre %{<p>This is some awesome code</p>}
      p %{This is a paragraph with <code>code</code>.}.html_safe
    }

    docs 'Dropdowns', %{
      div.dropdown {
        a.dropdown_toggle 'Click me',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li {
              a 'Hey! This is some really long dropdown text, yo.', href: '#'
            }
            li.dropdown_menu_sub_trigger.active {
              a 'View more...', href: '#'
            }
            li {
              ul.dropdown_menu_sub {
                li.active {
                  a 'This is one option', href: '#'
                }
                li {
                  a 'This is another', href: '#'
                }
                li {
                  a 'This is a third option', href: '#'
                }
              }
            }
            li {
              a(href: '#') {
                i(class: 'fa fa-star')
                text ' With an icon!'
              }
            }
            li {
              a 'No!', href: '#'
            }
            li.dropdown_menu_sub_trigger {
              a 'View more...', href: '#'
            }
            li {
              ul.dropdown_menu_sub {
                li {
                  a 'This is one option with a whole lot of content that is going to overflow ' +
                    'onto another line and get all crazy and such, what a shame it is that we ' +
                    'have to deal with crap like this.', href: '#'
                }
                li {
                  a 'This is another', href: '#'
                }
              }
            }
          }
        }
      }

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Click me',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li {
              a 'This was triggered by a dropdown_toggle_button', href: '#'
            }
          }
        }
      }

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Notifications',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li.drop_important {
              a.cf(href: '#') {
                span.drop_master_multiline { i(class: 'fa fa-envelope') }
                span.drop_detail_multiline 'Important! You were sent a message!!!'
              }
            }
            li {
              a.cf(href: '#') {
                span.drop_master_multiline { i(class: 'fa fa-file-text') }
                span.drop_detail_multiline 'A file was added to your project'
              }
            }
            li.active {
              a.cf(href: '#') {
                span.drop_master_multiline { i(class: 'fa fa-file-text') }
                span.drop_detail_multiline 'This is an active item'
              }
            }
          }
        }
      }

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Loading state',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li.dropdown_loading {
              span {
                i(class: 'fa fa-refresh fa-spin dropdown_loading_icon')
              }
            }
          }
        }
      }

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Right item',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li {
              a {
                span.drop_rt_item 'This is an item!'
                span.drop_rt_arrow { i(class: 'fa fa-external-link') }
              }
            }
            li {
              a {
                span.drop_rt_item 'This is another!'
                span.drop_rt_arrow { i(class: 'fa fa-external-link') }
              }
            }
          }
        }
      }
    }

    docs 'Labels', %{
      span.label.label_error 'Error'
      text ' '
      span.label.label_success 'Success'
      text ' '
      span.label.label_info 'Info'
      text ' '
      span.label.label_warning 'Warning'
    }

    docs 'Links', %{
      a.uppercase 'Uppercase'
      text ' '
      a.smallbold 'Smallbold'
    }

    docs 'Lists', %{
      ul {
        li 'This'
        li 'is a'
        li 'list!'
      }
    }

    docs 'Modals', %{
      a 'Open modal', 'data-toggle' => 'modal', href: '#modal'
      widget Dvl::Components::Modal.new(title: 'Awesome modal', id: 'modal') do
        div.modal_body {
          text 'This is the modal body!'

          br br

          div.dropdown {
            a.dropdown_toggle_button.gray 'Click me',
                              'data-toggle' => 'dropdown',
                              href: '#'
            div.dropdown_menu(role: 'menu') {
              ul.dropdown_body {
                li {
                  a 'This was triggered by a dropdown_toggle_button', href: '#'
                }
              }
            }
          }

          br br

          a 'This is a tooltip link',
            'data-toggle' => 'tooltip',
            title: 'Tooltip'
        }

      end

      br

      a 'Confirmation modal', 'data-toggle' => 'modal', href: '#confirmModal'
      widget Dvl::Components::Modal.new(
        title: 'Are you sure?',
        id: 'confirmModal',
        html_opts: { class: 'modal_confirm' }
      ) do
        div.modal_body {
          text 'Are you sure?'
        }
        div.modal_footer {
          a.button.error 'OK'
        }
      end
    }

    docs 'Pagination', %{
      div(class: 'pagination-wrapper') {
        ul {
          li { a(href: '#'){text '‹'}}
          li { a(href: '#'){text '1'}}
          li { span '2' }
          li { a(href: '#'){text '3'}}
          li { a(href: '#'){text '›'}}
        }
      }
    }

    docs 'Progress', %{
      div.progress {
        div.progress_inner(style: "width: 30%") {
          text '30%'
        }
      }
    }

    docs 'Sidebar Data List', %{
      div.sidebar_box {
        ul.sidebar_data {
          li {
            div.sidebar_data_icon {
              i '✓'
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Label'
              div.sidebar_data_value 'Value'
              div.sidebar_data_details 'Details'
            }
          }
          li {
            div.sidebar_data_icon {
              i '✓'
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Dropdowns'
              div.sidebar_data_value {
                simple_form_for :foo do |f|
                  f.input_field :blah, as: :select, collection: ['Bar'], selected: 'Bar'
                  br
                  f.input_field :blah, as: :dropdown_select, collection: [['Bar', 'Bar', 'Bar']], selected: 'Bar'
                end
              }
            }
          }
        }
      }
    }

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

    docs 'Tables', %{
      table {
        thead {
          tr {
            th 'ID'
            th 'Name'
          }
        }
        tbody {
          tr {
            td '1'
            td 'Bob'
          }
          tr {
            td '2'
            td 'Job'
          }
        }
      }
    }

    docs 'Tooltips', %{
      %w(top right bottom left).each do |x|
        a x.capitalize,
          'data-toggle' => 'tooltip',
          'data-placement' => x,
          'data-container' => 'body',
          title: "Tooltip on the " + x + "!"

        text ' '
      end
    }

    docs 'Typography', %{
      h1 'Heading 1'
      h2 'Heading 2'
      h3 'Heading 3'
      h4 'Heading 4'
      h5 'Heading 5'
      h6 'Heading 6'
      p 'Lorem ipsum.'

      p.microcopy {
        text 'This is some awesome .microcopy.'
        a.microcopy_action 'Microcopy action'
      }
    }
  end
end
