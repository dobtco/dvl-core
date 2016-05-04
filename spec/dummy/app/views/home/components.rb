class Views::Home::Components < Views::Page
  def main
    h2 'Components'

    h3 'Dropdowns'

    docs 'Basic', %{
      div(class: 'dvlcore_button_array') {
        div(class: 'dropdown') {
          a(
            'Dropdown', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
              li {
                a 'Option 1', href: '#'
              }
              li(class: 'divider') {
                a 'Option 2, with divider', href: '#'
              }
              li {
                a 'New project&hellip;'.html_safe, href: '#'
              }
              li {
                a(href: 'mailto:support@dobt.co') {
                  span 'Contact support', class: 'drop_rt_item'
                  span(class: 'drop_rt_arrow') { i(class: 'fa fa-external-link') }
                }
              }
            }
          }
        }

        div(class: 'dropdown') {
          a(
            'Dropdown with more options', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
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
              li(class: 'dropdown_more') {
                a 'View more&hellip;'.html_safe, href: '#'
              }
            }
          }
        }
      }
    }, sub: true,
    hint: "When linking to external sites from a dropdown, indicate this with an icon on the right side of the link.<br/><br/>If pressing a link in a dropdown triggers a user flow with additional steps, append an ellipsis to it.".html_safe

    docs 'Multi-Column', %{
      div(class: 'dvlcore_button_array') {
        div(class: 'dropdown') {
          a(
            'Icons', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
              li {
                a(href: '#') {
                  span(class: 'drop_master') { i(class: 'fa fa-envelope') }
                  span 'Send a message', class: 'drop_detail'
                }
              }

              li {
                a(href: '#') {
                  span(class: 'drop_master') { i(class: 'fa fa-pencil') }
                  span 'Edit', class: 'drop_detail'
                }
              }

              li {
                a(href: '#') {
                  span(class: 'drop_master') { i(class: 'fa fa-minus-circle') }
                  span 'Delete', class: 'drop_detail'
                }
              }
            }
          }
        }

        div(class: 'dropdown') {
          a(
            'Users', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
              li {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/adam.jpg', alt: 'Adam Becker')
                  }
                  span 'Adam Becker', class: 'drop_detail'
                }
              }
              li {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/aviv.jpg', alt: 'Aviv Nitsan')
                  }
                  span 'Aviv Nitsan', class: 'drop_detail'
                }
              }
            li {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/clay.jpg', alt: 'Clay Johnson')
                  }
                  span 'Clay Johnson', class: 'drop_detail'
                }
              }
              li(class: 'disabled') {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/jg.jpg', alt: 'Disabled')
                  }
                  span 'Disabled Option', class: 'drop_detail'
                }
              }
            }
          }
        }

        div(class: 'dropdown') {
          a(
            'Colors', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
              li {
                a(href: '#') {
                  span(class: 'drop_master') {
                    span(class: 'drop_master_color', style: "background-color: #e3e15f")
                  }
                  span 'Open', class: 'drop_detail'
                }
              }

             li(class: 'is_selected') {
                a(href: '#') {
                  span(class: 'drop_master') {
                    span(class: 'drop_master_color', style: "background-color: #5bb7d9")
                  }
                  span 'Pending', class: 'drop_detail'
                }
              }

              li {
                a(href: '#') {
                  span(class: 'drop_master_multiline') {
                    span(class: 'drop_master_color', style: "background-color: #bfeef3")
                  }
                  span 'Rejected by the International Court of Justice in The Hague, Netherlands', class: 'drop_detail_multiline'
                }
              }
            }
          }
        }
      }
    }, sub: true

    docs 'Filtering', %{
      div(class: 'dvlcore_button_array') {
        div(class: 'dropdown dropdown_filter') {
          a(
            'Assign to&hellip;'.html_safe, class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )
          div(class: 'dropdown_menu dropdown_menu_label') {
            form(class: 'dropdown_filter_head') {
              input type: 'text',
                    placeholder: 'Filter users',
                    class: 'js-dropdown-filter-input'
            }
            ul(class: 'dropdown_body') {
              li('data-clear' => true) {
                a(
                  'data-dropdown-filter-action' => true
                ) {
                  span(class: 'drop_master') { i(class: 'fa fa-minus-circle') }
                  span 'Clear selection', class: 'drop_detail'
                }
              }
              li {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/adam.jpg', alt: 'Adam Becker')
                  }
                  span 'Adam Becker', class: 'drop_detail'
                }
              }
              li(class: 'is_selected') {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/aviv.jpg', alt: 'Aviv Nitsan')
                  }
                  span 'Aviv Nitsan', class: 'drop_detail'
                }
              }
            li(class: 'is_partial') {
                a(href: '#') {
                  span(class: 'drop_master') {
                    img(class: 'drop_master_avatar', src: 'https://raw.githubusercontent.com/dobtco/headshots/master/headshots/clay.jpg', alt: 'Clay Johnson')
                  }
                  span 'Clay Johnson', class: 'drop_detail'
                }
              }
            }
          }
        }

        div(class: 'dropdown dropdown_filter') {
          a(
            'Blank state', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )
          div(class: 'dropdown_menu dropdown_menu_label') {
            form(class: 'dropdown_filter_head') {
              input type: 'text',
                    placeholder: 'Filter users',
                    class: 'js-dropdown-filter-input'
            }
            ul(class: 'dropdown_body') {
              li(class: 'js_no_labels') { span 'No users', class: 'none' }
            }
          }
        }
      }
    }, hint: 'The minus icon inside the first dropdown visually indicates partial selection. In the "Assign to..." dropdown, multiple items are selected. All of them are assigned to Aviv, and some are assigned to Clay.', sub: true

    docs 'Appearance', %{
      div(class: 'dvlcore_button_array') {
        div(class: 'dropdown') {
          a(
            'Loading', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )
          div(class: 'dropdown_menu') {
            h3 'Loading State'
            ul(class: 'dropdown_body') {
              li(class: 'dropdown_loading') {
                span {
                  i(class: 'fa fa-spin fa-refresh')
                }
              }
            }
          }
        }

        div(class: 'dropdown') {
          a 'Multiple Sections', class: 'button toggle',
                            'data-toggle' => 'dropdown',
                            href: '#'
          div(class: 'dropdown_menu') {
            ul(class: 'dropdown_body') {
              li 'Section One', class: 'dropdown_header'
              li { a 'Link One' }
              li { a 'Link Two' }
              li 'Section Two', class: 'dropdown_header'
              li { a 'Link Three' }
              li { a 'Link Four' }
            }
          }
        }

        div(class: 'dropdown') {
          a(
            'Right-aligned', class: 'button toggle',
            'data-toggle' => 'dropdown',
            href: '#'
          )

          div(class: 'dropdown_menu dropdown_right') {
            ul(class: 'dropdown_body') {
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
    }, sub: true

    docs 'Multi-Level', %{
      div(class: 'dropdown') {
        a 'Sort by&hellip;'.html_safe,
          'data-toggle' => 'dropdown',
          class: 'dropdown_toggle_link',
          href: '#'
        div(class: 'dropdown_menu') {
          ul(class: 'dropdown_body') {
            li {
              a 'Name', href: '#'
            }
            li {
              a 'Email', href: '#'
            }
            li(class: 'active') {
              a 'Timestamp', href: '#'
            }
            li(class: 'dropdown_menu_sub_trigger') {
              a 'Answer to&hellip;'.html_safe, href: '#'
            }
            li {
              ul(class: 'dropdown_menu_sub') {
                li {
                  a 'Eligibility Requirements', href: '#'
                }
                li {
                  a 'Describe your GIS analysis experience', href: '#'
                }
                li {
                  a 'Have you applied for this job before, in previous years? How have you improved since the last time you applied for this job in person?', href: '#'
                }
              }
            }
            li {
              a 'Overall rating', href: '#'
            }
            li(class: 'disabled') {
              a 'Beauty', href: '#'
            }
          }
        }
      }
    }, hint: %{Dropdowns can also be triggered from regular links. Just add the <code>.dropdown_toggle_link</code> class to any <code>&lt;a&gt;</code> tag.}.html_safe, sub: true

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
    }, hint: %{See the <a href="/forms#rich-text dropdowns">Forms page</a> for more details.}.html_safe, sub: true

    docs 'Flashes', %{
      ul {
        li {
          a 'Success notification', href: 'javascript:Dvl.Flash("success", "You did it!")'
        }
        li {
          a 'Neutral flash', href: 'javascript:Dvl.Flash("info", "This is <a href=#>an informational message</a>.")'
        }
        li {
          a 'Long error notification', href: 'javascript:Dvl.Flash("error", "Oh dear lord, an error has occurred! I am not sure how to handle a quandary quite like this.")'
        }
        li {
          a 'Neutral with action', href: 'javascript:Dvl.Flash("info", "Your item was deleted.", "<a href=#>Undo</a>")'
        }
      }
    }

    docs 'Alerts', %{
      div(class: 'alert') {
        span 'This project is <strong>not yet posted</strong>.'.html_safe, class: 'alert_message'
        span(class: 'alert_buttons') {
          a 'Go live', class: 'button primary'
          a 'Dismiss', class: 'button'
        }
      }

      div(class: 'alert') {
        span 'People in this organization can&hellip;'.html_safe, class: 'alert_message'

        form {
          select('aria-label' => 'Permission level') {
            option 'Manage this project'
            option 'Edit responses'
            option 'View responses'
          }
          text ' '
          button 'Change', class: 'button info'
        }
      }

      div(class: 'alert') {
        span ('Please confirm the information below is correct, and then sign your name below to complete the form.'), class: 'alert_message'
        span(class: 'alert_buttons') {
          a 'Take me to the signature field', class: 'button primary', href: '#'
        }
      }
    }, full: true

    docs 'Modals', %{
      text 'In addition to our '
      a 'default modal style', 'data-toggle' => 'modal', href: '#modal'
      widget Dvl::Core::Views::Modal.new(title: 'Default modal', id: 'modal') do
        div(class: 'modal_body') {
          p 'Content goes here.'

          div(class: 'dropdown') {
            a 'You can toggle dropdowns from a modal', class: 'dropdown_toggle_link',
                              'data-toggle' => 'dropdown',
                              href: '#'
            div(class: 'dropdown_menu') {
              ul(class: 'dropdown_body') {
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
      widget Dvl::Core::Views::Modal.new(
        title: 'Delete the style guide?',
        id: 'confirmModal',
        html_opts: { class: 'modal_confirm' }
      ) do
        div(class: 'modal_body') {
          text "(Disclaimer: this modal won&#39;t actually delete the style guide.)".html_safe
        }
        div(class: 'modal_footer') {
          span(class: 'modal_footer_secondary') {
            a 'Delete Screendoor instead'
          }
          span(class: 'modal_footer_primary') {
            a 'Cancel', class: 'button'
            a 'Confirm', class: 'button error'
          }
        }
      end
      text '.'
    }

    h3 'Pagination'
    docs 'Left Aligned', %{
      div(class: 'pagination') {
        ul {
          li { a(href: '#'){text "&larr;".html_safe}}
          li { a(href: '#'){text '1'}}
          li(class: 'active') { span '2' }
          li { a(href: '#'){text '3'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){text "&rarr;".html_safe}}
        }
      }
    }, sub: true

    docs 'Center Aligned', %{
      div(class: 'pagination pagination_centered') {
        ul {
          li { a(href: '#'){text "&larr;".html_safe}}
          li { a(href: '#'){text '1'}}
          li(class: 'active') { span '2' }
          li { a(href: '#'){text '3'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){text "&rarr;".html_safe}}
        }
      }
    }, sub: true

    docs 'With fewer pages', %{
      div(class: 'pagination pagination_centered') {
        ul {
          li { span '&larr;'.html_safe }
          li(class: 'active') { span '1' }
          li { a('2', href: '#') }
          li { a '&rarr;'.html_safe }
        }
      }
    }, sub: true

    docs 'Compact', %{
      div(class: 'pagination_compact') {
        span "#1 of 123".html_safe

        ul {
          li { span{text '&larr;'.html_safe}}
          li { a(href: '#'){text '&rarr;'.html_safe}}
        }
      }
    }, sub: true

    hr

    docs 'Progress Bars', %{
      div(class: 'progress') {
        div(class: 'progress_inner', style: "width: 30%") {
          text '30%'
        }
      }
    }

    h3 'Delete confirmations'

    p 'Use one of the following patterns to confirm a destructive action.'

    docs "When the Delete button is an icon, show a popover to clarify the user's intent.", %{
      ul(class: 'delete_list') {
        li(class: 'js_delete_1') {
          text 'Project 1'
          a(class: 'icon_secondary', 'data-confirm' => true, 'data-confirm-with' => 'popover', href: '/delete', 'data-method' => 'delete', 'data-remote' => true) {
            i(class: 'fa fa-minus-circle')
          }
        }
        li(class: 'js_delete_2') {
          text 'Project 2'
          a(class: 'icon_secondary', 'data-confirm' => 'This is an important record. <strong>It will be destroyed forever.</strong>', 'data-confirm-with' => 'popover', href: '/delete', 'data-method' => 'delete', 'data-remote' => true) {
            i(class: 'fa fa-minus-circle')
          }
        }
        li(class: 'js_delete_3') {
          text 'Project 3'
          a(class: 'icon_secondary', 'data-confirm' => true, 'data-confirm-with' => 'popover', 'data-confirmation-options' => { 't_delete' => 'Archive' }.to_json, href: '/delete', 'data-method' => 'delete', 'data-remote' => true) {
            i(class: 'fa fa-minus-circle')
          }
        }
      }
    }, sub: true, hint: 'Popovers can contain headers and alternate button text.'

    docs 'When the Delete button contains text, delete the item immediately, and let the user undo the action.', %{
      li(class: 'js_delete_5') {
        a(class: 'button_uppercase',
          href: "javascript: Dvl.Flash('info', 'You deleted the response.', '<a>Undo</a>')") {
            i(class: 'fa fa-minus-circle')
            text 'Delete this response'
          }
      }
    }, sub: true, hint: 'The undo is usually implemented server-side.'


    docs 'For destructive actions with major consequences, show a confirmation modal.', %{
      div(class: 'js_delete_4') {
        a('Archive my project', class: 'button error', 'data-confirm' => true, href: '/delete', 'data-method' => 'delete', 'data-remote' => true)
      }
    }, sub: true

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
