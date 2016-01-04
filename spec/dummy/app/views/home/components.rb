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
                a(href: 'mailto:support@dobt.co') {
                  span 'Contact support&hellip;'.html_safe, class: 'drop_rt_item'
                  span(class: 'drop_rt_arrow') { i(class: 'icon icon_external_link') }
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
    }, sub: true

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
                  span(class: 'drop_master') { i(class: 'icon icon_email') }
                  span 'Send a message', class: 'drop_detail'
                }
              }

              li {
                a(href: '#') {
                  span(class: 'drop_master') { i(class: 'icon icon_edit') }
                  span 'Edit', class: 'drop_detail'
                }
              }

              li {
                a(href: '#') {
                  span(class: 'drop_master') { i(class: 'icon icon_delete_circle') }
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
                  span(class: 'drop_master') { i(class: 'icon icon_delete_circle') }
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
                span(class: 'loader')
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
          a 'Success notification', href: 'javascript:DvlFlash("success", "You did it!")'
        }
        li {
          a 'Neutral flash', href: 'javascript:DvlFlash("info", "This is an informational message.")'
        }
        li {
          a 'Long error notification', href: 'javascript:DvlFlash("error", "Oh dear lord, an error has occurred! I am not sure how to handle a quandary quite like this.")'
        }
        li {
          a 'Neutral with action', href: 'javascript:DvlFlash("info", "Your item was deleted.", "<a href=#>Undo</a>")'
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
          li { a(href: '#'){ i(class: 'icon icon_arrow_left') }}
          li { a(href: '#'){text '1'}}
          li(class: 'active') { span '2' }
          li { a(href: '#'){text '3'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){ i(class: 'icon icon_arrow_right') }}
        }
      }
    }, sub: true

    docs 'Center Aligned', %{
      div(class: 'pagination pagination_centered') {
        ul {
          li { a(href: '#'){ i(class: 'icon icon_arrow_left') }}
          li { a(href: '#'){text '1'}}
          li(class: 'active') { span '2' }
          li { a(href: '#'){text '3'}}
          li { span '&hellip;'.html_safe }
          li { a(href: '#'){text '19'}}
          li { a(href: '#'){text '20'}}
          li { a(href: '#'){ i(class: 'icon icon_arrow_right') }}
        }
      }
    }, sub: true

    docs 'With fewer links', %{
      div(class: 'pagination pagination_centered') {
        ul {
          li { span { i(class: 'icon icon_arrow_left') }}
          li(class: 'active') { span '1' }
          li { a('2', href: '#') }
          li { a { i(class: 'icon icon_arrow_right') }}
        }
      }
    }

    docs 'Compact', %{
      div(class: 'pagination_compact') {
        span "#1 of 123".html_safe

        ul {
          li { span{ i(class: 'icon icon_arrow_left_sm') }}
          li { a(href: '#'){ i(class: 'icon icon_arrow_right_sm') }}
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
