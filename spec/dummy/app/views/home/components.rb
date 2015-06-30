class Views::Home::Components < Views::Base
  def main
    h2 'Components'
    
    h3 'Dropdowns'

    docs 'Basic', %{
      div.dvlcore_button_array {
        div.dropdown {
          a.button.toggle(
            'Dropdown',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu(role: 'menu') {
            ul.dropdown_body {
              li {
                a 'Option 1', href: '#'
              }
              li.divider {
                a 'Option 2, with divider'
              }
              li {
                a(href: 'mailto:support@dobt.co') {
                  span.drop_rt_item 'Contact support&hellip;'.html_safe
                  span.drop_rt_arrow { i(class: 'fa fa-external-link') }
                }
              }
            }
          }
        }

        div.dropdown {
          a.button.toggle(
            'Dropdown with more options',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu(role: 'menu') {
            ul.dropdown_body {
              li {
                a 'Option 1', href: '#'
              }
              li {
                a 'Option 2', href: '#'
              }
              li {
                a 'Option 3', href: '#'
              }
              li {
                a 'Option 4', href: '#'
              }
              li.dropdown_more {
                a 'View more&hellip;'.html_safe, href: '#'
              }
            }
          }
        }
      }
    }, sub: ''

    docs 'Multi-Column', %{
      div.dvlcore_button_array {
        div.dropdown {
          a.button.toggle(
            'Icons',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu(role: 'menu') {
            ul.dropdown_body {
              li {
                a(href: '#') {
                  span.drop_master { i(class: 'fa fa-envelope') }
                  span.drop_detail 'Send a message'
                }
              }

              li {
                a(href: '#') {
                  span.drop_master { i(class: 'fa fa-pencil') }
                  span.drop_detail 'Edit'
                }
              }

              li {
                a(href: '#') {
                  span.drop_master { i(class: 'fa fa-minus-circle') }
                  span.drop_detail 'Delete'
                }
              }
            }
          }
        }

        div.dropdown {
          a.button.toggle(
            'Users',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu(role: 'menu') {
            ul.dropdown_body {
              li {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/adam.jpg', alt: 'Adam Becker')
                  }
                  span.drop_detail 'Adam Becker'
                }
              }
              li {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/aviv.jpg', alt: 'Aviv Nitsan')
                  }
                  span.drop_detail 'Aviv Nitsan'
                }
              }
            li {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/clay.jpg', alt: 'Clay Johnson')
                  }
                  span.drop_detail 'Clay Johnson'
                }
              }
              li.disabled {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/jg.jpg', alt: 'Disabled')
                  }
                  span.drop_detail 'Disabled Option'
                }
              }
            }
          }
        }

        div.dropdown {
          a.button.toggle(
            'Colors',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu(role: 'menu') {
            ul.dropdown_body {
              li {
                a(href: '#') {
                  span.drop_master {
                    span.drop_master_color(style: "background-color: #e3e15f")
                  }
                  span.drop_detail 'Open'
                }
              }

             li.is_selected {
                a(href: '#') {
                  span.drop_master {
                    span.drop_master_color(style: "background-color: #5bb7d9")
                  }
                  span.drop_detail 'Pending'
                }
              }

              li {
                a(href: '#') {
                  span.drop_master_multiline {
                    span.drop_master_color(style: "background-color: #bfeef3")
                  }
                  span.drop_detail_multiline 'Rejected by the International Court of Justice in The Hague, Netherlands'
                }
              }
            }
          }
        }
      }
    }, sub: ''

    docs 'Filtering', %{
      div.dvlcore_button_array {
        div.dropdown.dropdown_filter {
          a.button.toggle(
            'Assign to&hellip;'.html_safe,
            'data-toggle' => 'dropdown',
            href: '#'
          )
          div.dropdown_menu.dropdown_menu_label {
            form.dropdown_filter_head {
              input type: 'text',
                    placeholder: 'Filter users',
                    class: 'js-dropdown-filter-input'
            }
            ul.dropdown_body {
              li('data-clear' => true) {
                a(
                  'data-dropdown-filter-action' => true
                ) {
                  span.drop_master { i(class: 'fa fa-minus-circle') }
                  span.drop_detail 'Clear selection'
                }
              }
              li {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/adam.jpg', alt: 'Adam Becker')
                  }
                  span.drop_detail 'Adam Becker'
                }
              }
              li.is_selected {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/aviv.jpg', alt: 'Aviv Nitsan')
                  }
                  span.drop_detail 'Aviv Nitsan'
                }
              }
            li.is_partial {
                a(href: '#') {
                  span.drop_master {
                    img.drop_master_avatar(src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/clay.jpg', alt: 'Clay Johnson')
                  }
                  span.drop_detail 'Clay Johnson'
                }
              }
            }
          }
        }

        div.dropdown.dropdown_filter {
          a.button.toggle(
            'Blank state',
            'data-toggle' => 'dropdown',
            href: '#'
          )
          div.dropdown_menu.dropdown_menu_label {
            form.dropdown_filter_head {
              input type: 'text',
                    placeholder: 'Filter users',
                    class: 'js-dropdown-filter-input'
            }
            ul.dropdown_body {
              li.js_no_labels { span.none 'No users' }
            }
          }
        }
      }
    }, hint: 'The minus icon inside the first dropdown indicates that the current selection only partially applies to that item.', sub: ''

    docs 'Appearance', %{
      div.dvlcore_button_array {
        div.dropdown {
          a.button.toggle(
            'Loading',
            'data-toggle' => 'dropdown',
            href: '#'
          )
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
        
        div.dropdown {
          a.button.toggle 'Multiple Sections',
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

        div.dropdown {
          a.button.toggle(
            'Right-aligned',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div.dropdown_menu.dropdown_right(role: 'menu') {
            ul.dropdown_body {
              li {
                a 'Option 1', href: '#'
              }
              li {
                a 'Option 2', href: '#'
              }
              li {
                a 'Option 3', href: '#'
              }
            }
          }
        }
      }
    }, sub: ''

    docs 'Multi-Level', %{
      div.dropdown {
        a 'Sort by&hellip;'.html_safe,
          'data-toggle' => 'dropdown',
          class: 'dropdown_toggle_link',
          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li {
              a 'Name', href: '#'
            }
            li {
              a 'Email', href: '#'
            }
            li.active {
              a 'Timestamp', href: '#'
            }
            li.dropdown_menu_sub_trigger {
              a 'Answer to&hellip;'.html_safe, href: '#'
            }
            li {
              ul.dropdown_menu_sub {
                li {
                  a 'Eligibility Requirements', href: '#'
                }
                li {
                  a 'Describe your GIS analysis experience', href: '#'
                }
                li {
                  a 'Have you applied for this fellowship before, in previous years? How have you improved since the last time you applied for this fellowship?', href: '#'
                }
              }
            }
            li {
              a 'Overall rating', href: '#'
            }
            li.disabled {
              a 'Beauty', href: '#'
            }
          }
        }
      }
    }, hint: %{Dropdowns can also be triggered from regular links. Just add the <code>.dropdown_toggle_link</code> class to any <code>&lt;a&gt;</code> tag.}.html_safe, sub: ''

    docs 'Rich Text', %{
      simple_form_for :selects do |f|
        f.input :bar,
                as: :dropdown_select,
                label: 'Notifications',
                collection: [
                  ['All', 'action', 'All activity on this project will trigger a new notification.'],
                  ['Only when mentioned', 'action', 'You will be emailed when someone mentions you in a comment, or a response is assigned.'],
                  ['None', 'action']
                ]
      end
    }, hint: %{See the <a href="/forms#rich-text dropdowns">Forms page</a> for more details.}.html_safe, sub: ''

    docs 'Flashes', %{
      ul {
        li {
          a 'Success notification', href: 'javascript:DvlFlash("success", "You did it!")'
        }
        li {
          a 'Neutral flash', href: 'javascript:DvlFlash("info", "An informational message...")'
        }
        li {
          a 'Error notification', href: 'javascript:DvlFlash("error", "Oh no, an error occured!")'
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
        span.alert_message 'People in this organization can&hellip;'.html_safe

        form {
          select {
            option 'Manage this project'
            option 'Edit responses'
            option 'View responses'
          }
          text ' '
          button.button.info 'Change'
        }
      }

      div.alert {
        span.alert_message ('Please confirm the information below is correct, and then sign your name below to complete the form.')
        span.alert_buttons {
          a.button.primary 'Take me to the signature field', href: '#'
        }
      }
    }, full: true

    docs 'Modals', %{
      text 'In addition to our '
      a 'default modal style', 'data-toggle' => 'modal', href: '#modal'
      widget Dvl::Components::Modal.new(title: 'Default modal', id: 'modal') do
        div.modal_body {
          p 'Content goes here.'

          div.dropdown {
            a.dropdown_toggle_link 'You can toggle dropdowns from a modal',
                              'data-toggle' => 'dropdown',
                              href: '#'
            div.dropdown_menu(role: 'menu') {
              ul.dropdown_body {
                li {
                  a 'Option 1', href: '#'
                }
                li {
                  a 'Option 2', href: '#'
                }
                li {
                  a 'Option 3', href: '#'
                }
              }
            }
          }
        }

      end
      text ', we have a modal to '
      a 'confirm destructive actions', 'data-toggle' => 'modal', href: '#confirmModal'
      widget Dvl::Components::Modal.new(
        title: 'Delete the style guide?',
        id: 'confirmModal',
        html_opts: { class: 'modal_confirm' }
      ) do
        div.modal_body {
          text "(Disclaimer: this modal won&#39;t actually delete the style guide.)".html_safe
        }
        div.modal_footer {
          span.modal_footer_link {
            a 'Delete Screendoor instead'
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
          li { span '&hellip;'.html_safe }
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
          li { span '&hellip;'.html_safe }
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

    hr
    
    docs 'Progress Bars', %{
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
