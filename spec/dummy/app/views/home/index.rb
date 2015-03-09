class Views::Home::Index < Views::Base
  def main
    docs 'Buttons', %{
      a.button 'Yo!'
      text ' '
      a.button.info 'Info'
      text ' '
      a.button.primary 'Primary'
      text ' '
      a.button.success 'Success'
      text ' '
      a.button.white 'White'
      text ' '
      a.button_uppercase 'Uppercase'
    }

    docs 'Code', %{
      pre %{<p>This is some awesome code</p>}
      p %{This is a paragraph with <code>code</code>.}.html_safe
    }

    docs 'Dropdowns', %{
      div.dropdown {
        a.dropdown_toggle 'Click me',
                          'data-toggle' => 'dropdown'
        div.dropdown_menu {
          ul.dropdown_body {
            li {
              a 'Hey! This is some really long dropdown text, yo.'
            }
            li.dropdown_menu_sub_trigger.active {
              a 'View more...'
            }
            li {
              ul.dropdown_menu_sub {
                li.active {
                  a 'This is one option'
                }
                li {
                  a 'This is another'
                }
                li {
                  a 'This is a third option'
                }
              }
            }
            li {
              a {
                i(class: 'fa fa-star')
                text ' With an icon!'
              }
            }
            li {
              a 'No!'
            }
            li.dropdown_menu_sub_trigger {
              a 'View more...'
            }
            li {
              ul.dropdown_menu_sub {
                li {
                  a 'This is one option with a whole lot of content that is going to overflow ' +
                    'onto another line and get all crazy and such, what a shame it is that we ' +
                    'have to deal with crap like this.'
                }
                li {
                  a 'This is another'
                }
              }
            }
          }
        }
      }

      br

      div.dropdown {
        a.dropdown_toggle_button.gray 'Click me',
                          'data-toggle' => 'dropdown'
        div.dropdown_menu {
          ul.dropdown_body {
            li {
              a 'This was triggered by a dropdown_toggle_button'
            }
          }
        }
      }
    }

    docs 'Grid', %{
      div.grid {
        div.item.six_columns 'six_columns'
        div.item.six_columns 'six_columns'
      }
      div.grid.gutter_none {
        div.item.three_columns 'three_columns (gutter_none)'
        div.item.three_columns 'three_columns (gutter_none)'
        div.item.three_columns 'three_columns (gutter_none)'
        div.item.three_columns 'three_columns (gutter_none)'
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
          li { a '‹' }
          li { a '1' }
          li { span '2' }
          li { a '3' }
          li { a '›' }
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

    docs 'Sidebar', %{
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
