class Views::Home::Components < Views::Base
  def main
    h2 'Components'
    
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

    docs 'Flashes', %{
      ul {
        li {
          a 'Success', href: 'javascript:DvlFlash("success", "You did it!")'
        }
        li {
          a 'Info', href: 'javascript:DvlFlash("info", "An informational message...")'
        }
        li {
          a 'Error', href: 'javascript:DvlFlash("error", "Oh no, an error occured!")'
        }
      }
    }

    docs 'Alerts', %{
      div.alert {
        span.alert_message 'This project is <strong>not yet posted</strong>.'.html_safe
        span.alert_buttons {
          a.button.primary 'Go live'
          a.button 'Dismiss'
        }
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

    docs 'Modals', %{
      text 'In addition to our '
      a 'default modal style', 'data-toggle' => 'modal', href: '#modal'
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
      text ', we have a modal to '
      a 'confirm destructive actions', 'data-toggle' => 'modal', href: '#confirmModal'
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
    text '.'
    }

    h3 'Pagination'
    docs 'Left Aligned', %{
      div.pagination {
        ul {
          li { a(href: '#'){text "&larr;".html_safe}}
          li { a(href: '#'){text '1'}}
          li.active { span '2' }
          li { a(href: '#'){text '3'}}
          li { a(href: '#'){text '4'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '17'}}
          li { a(href: '#'){text '18'}}
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){text "&rarr;".html_safe}}
        }
      }
    }, sub: ''

    docs 'Center Aligned', %{
      div.pagination.pagination_centered {
        ul {
          li { a(href: '#'){text "&larr;".html_safe}}
          li { a(href: '#'){text '1'}}
          li.active { span '2' }
          li { a(href: '#'){text '3'}}
          li { a(href: '#'){text '4'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '17'}}
          li { a(href: '#'){text '18'}}
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){text "&rarr;".html_safe}}
        }
      }
    }, sub: ''

    docs 'Compact', %{
      div.pagination {
        span.pagination_status "#1 of 123".html_safe

        ul {
          li { span{text '&larr;'.html_safe}}
          li { a(href: '#'){text '&rarr;'.html_safe}}
        }
      }
    }, sub: ''

    docs 'Progress', %{
      div.progress {
        div.progress_inner(style: "width: 30%") {
          text '30%'
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
