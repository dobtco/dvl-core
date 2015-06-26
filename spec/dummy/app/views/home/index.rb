class Views::Home::Index < Views::Base
  def main

    docs 'Headings', %{
      h1 'Heading 1 64/80px'
      h2 'Heading 2 40/56px'
      h3 'Heading 3 23/32px'
      h4 'Heading 4 16/24px'
      h5 'Heading 5 13/24px'
    }

    docs 'Paragraph-Level Text', %{
      p 'Paragraph text is 16/24px. You should be styling most text with these defaults.'.html_safe

      blockquote 'Blockquotes are usually unecessary in UI copywriting. Use them in blog posts, support documentation, and other prose writing when quoting another source.'

      p %{Text with inline code, or developer-oriented data like API keys, should be wrapped in a <code>&lt;code&gt;</code> tag.}.html_safe

      pre %{## Code which wraps to multiple lines should be
## placed in a <pre> tag.}

    }

    docs 'Lists', %{

      ul.list_formatted {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }

      ol.list_formatted {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }
    }

    docs 'Definition Lists', %{
      p 'Use definition lists to format labeled lists and metadata, like the contents of a form submissions or the sender information in an email.'
      dl {
        dt 'Name'
        dd 'Barack Obama'
        dt 'Email Address'
        dd 'barack.obama@whitehouse.gov'
      }
    }

    docs 'Dropdowns', %{
      div.dropdown {
        a "Click me <i class='fa fa-caret-down'></i>".html_safe,
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
      br

      div.dropdown {
        a.button.toggle(
          'Click me',
          'data-toggle' => 'dropdown',
          href: '#'
        )

        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li {
              a 'This was triggered by a button', href: '#'
            }
          }
        }
      }

      br
      br

      div.dropdown {
        a.button.small.toggle.info 'Notifications',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li.drop_important {
              a.cf(href: '#') {
                span.drop_master_multiline { span.drop_master_color(style: 'background-color: red;') }
                span.drop_detail_multiline 'Important! You were sent a message!!!'
              }
            }
            li {
              a.cf(href: '#') {
                span.drop_master_multiline { img.drop_master_avatar(src: '//dobt-captured.s3.amazonaws.com/ajb/dummy_av_square.png') }
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
      br

      div.dropdown {
        a.button.toggle.primary 'Loading state',
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
      br

      div.dropdown {
        a "Right item <i class='fa fa-caret-down'></i>".html_safe,
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

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Dropdown with sections',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li.dropdown_header 'Section One'
            li { a 'Link One' }
            li { a 'Link Two' }
            li.dropdown_header 'Section Two'
            li { a 'Link Three' }
            li { a 'Link Four' }
          }
        }
      }
    }, hint: 'Add the .toggle modifier to buttons to give them a border and a caret.'

    docs 'Labels', %{
      span.label.label_error 'Error'
      text ' '
      span.label.label_success 'Success'
      text ' '
      span.label.label_info 'Info'
      text ' '
      span.label.label_warning 'Warning'
    }

    docs 'Alerts', %{
      div.alert {
        span.alert_message 'This project is <strong>not yet posted</strong>.'.html_safe
      }

      div.alert {
        span.alert_message 'This project is a draft.'

        span.alert_buttons {
          a.button.primary 'Go Live!', href: '#'
        }
      }

      div.alert {
        span.alert_message 'Please choose a new owner.'

        form {
          select {
            option 'Person One'
            option 'Person Two'
          }
          text ' '
          button.button.info 'Submit'
        }
      }

      div.alert {
        span.alert_message ('This is a really long alert message. ' * 5)
        span.alert_buttons {
          a.button.primary 'Go Live!', href: '#'
        }
      }
    }, full: true

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
            a.gray 'Click me',
                              'data-toggle' => 'dropdown',
                              href: '#'
            div.dropdown_menu(role: 'menu') {
              ul.dropdown_body {
                li {
                  a 'Item 1', href: '#'
                }
              }
            }
          }

          br br

          a 'This is a tooltip link',
            'data-toggle' => 'tooltip',
            title: 'Tooltip',
            href: '#'
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
          span.modal_footer_link {
            text 'Or '
            a 'do another thing'
          }
          a.button.error 'OK'
        }
      end
    }

    docs 'Pagination', %{
      div.pagination {
        ul {
          li { a(href: '#'){text '‹'}}
          li { a(href: '#'){text '1'}}
          li { span '2' }
          li { a(href: '#'){text '3'}}
          li { a(href: '#'){text '›'}}
        }
      }

      div.pagination.pagination_centered {
        ul {
          li { a(href: '#'){text '‹'}}
          li { a(href: '#'){text '11'}}
          li { span '12' }
          li { a(href: '#'){text '13'}}
          li { a(href: '#'){text '›'}}
        }
      }

      hr

      div.pagination {
        span.pagination_status "Showing <strong>1</strong> of <strong>123</strong>".html_safe

        ul {
          li { span{text '‹'}}
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
                  f.input_field :blah, as: :select, collection: ['Bar'], selected: 'Bar', 'data-width' => '100%'
                  br
                  f.input_field :blah, as: :dropdown_select, collection: [['Bar', 'Bar', 'Bar']], selected: 'Bar', 'data-width' => '100%'
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
          title: "Tooltip on the " + x + "!",
          href: '#'

        text ' '
      end
    }
  end
end
