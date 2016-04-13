class Views::Home::Forms < Views::Page
  def main
    h2 'Forms'

    h3 'Form elements'

    docs 'Basic', %{
      simple_form_for :basic do |f|
        f.input :string,
                as: :string,
                label: 'Text',
                input_html: { value: 'Lorem ipsum dolor' },
                hint: "Use hint text if the input can't be fully described by its label. Keep this text brief.".html_safe

        f.input :text,
                as: :text,
                label: 'Textarea',
                input_html: { rows: 5, value:  sample_paragraph }

        f.input :radio,
                as: :radio_buttons,
                collection: ['Enthusiastic', 'Indifferent', 'Antagonistic'],
                label: 'What are your thoughts on the Bilderberg Group?',
                checked: 'Indifferent'

        f.input :checkbox,
                as: :check_boxes,
                collection: ['Animal', 'Augmented organism', 'Gaseous mass', 'Human', 'Robot', 'An unclassifiable entity, perhaps capable of emotion and rational thought, perhaps in possession of a soul, perhaps with the critical faculties necessary to appreciate a fine wine. Why bother to put a label on it?'],
                label: 'Which of the group(s) below most accurately represent you?',
                checked: 'Human'

        f.input :boolean,
                as: :boolean,
                label: 'Do you agree to the Terms of Service?',
                inline_label: 'Yes.',
                hint: "Checkbox fields can contain a single answer option where appropriate.".html_safe

        label(class: 'control control_minus') {
          input type: 'checkbox', checked: true
          text 'Select all items'
        }
        div 'This is a partially selected checkbox. In this example, only some items are selected.', class: 'form_hint'

      end
      simple_form_for :selects do |f|
        f.input :select,
                as: :select,
                label: 'What race do you most closely identify with?',
                collection: [
                  ['Caucasian', 1],
                  ['Black / African-American', 2],
                  ['American Indian / Alaskan National', 3],
                  ['Asian', 4],
                  ['Hawaiian, or a Native of One of the Pacific Islands', 5],
                  ['Other', 6],
                  ['Mixed race or ethnicity', 7]
                ],
                include_blank: true

        f.input :select,
                as: :select,
                label: 'Selects can include placeholder text for blank options',
                collection: [
                  ['Caucasian', 1],
                  ['Black / African-American', 2],
                  ['American Indian / Alaskan National', 3]
                ],
                include_blank: 'None selected'

        f.input :select,
                as: :select,
                label: 'Use <code>data-no-blank-class</code> if the blank option is not a prompt.'.html_safe,
                collection: [
                  ['Show only input fields', 1],
                  ['Show only display fields', 2]
                ],
                include_blank: 'Show all fields',
                input_html: { 'data-no-blank-class' => true }

      f.input :select,
              as: :select,
              label: 'This dropdown has a fixed width of 14rem.',
              collection: ['Option 1', 'Option 2'],
              include_blank: false,
              input_html: { 'data-width' => '14rem' }

      f.input :select,
              as: :select,
              label: 'You can also create full-width native dropdowns.',
              collection: ['Option 1', 'Option 2'],
              include_blank: false,
              input_html: { 'data-width' => 'full' }
      end
    }, sub: true

    docs 'Rich-text dropdowns', %{
      simple_form_for :selects do |f|
        f.input :bar,
                as: :dropdown_select,
                label: 'Notifications',
                collection: [
                  ['All', 'action', 'All activity on this project will trigger a new notification.'],
                  ['Only when mentioned', 'action', 'You will be emailed when someone mentions you in a comment, or a response is assigned.'],
                  ['None', 'action']
                ]

        f.input :blank_dropdown_select,
                as: :dropdown_select,
                label: 'Rich-text dropdowns can be blank by default.',
                collection: [['Option 1', 'action', 'Description'],
                ['An example of a very long Option 2. This should not be a problem, because the text should wrap to multiple lines.', 'action', 'Description']],
                include_blank: 'None selected'
      end
    }, hint: 'This component lets you add long answer options, or descriptive text to each option, while imitating the behavior of a native <code>&lt;select&gt;</code>.'.html_safe, sub: true

    hr

    h3 'States'

    docs "Disabled / &ldquo;read only&rdquo;".html_safe, %{
      simple_form_for :disabled do |f|
        f.input :string,
                as: :string,
                label: 'Text',
                input_html: { value: 'Lorem ipsum dolor' },
                disabled: true

        f.input :text,
                as: :text,
                label: 'Textarea',
                input_html: { rows: 5, value:  sample_paragraph },
                disabled: true

        f.input :disabled_radio,
                as: :radio_buttons,
                label: 'Is the sky blue?',
                collection: ['Yes', 'No'],
                checked: 'Yes',
                disabled: true

        f.input :disabled_checkbox,
                as: :check_boxes,
                label: 'Which countries border the United States?',
                collection: ['Canada', 'Mexico', 'Australia'],
                checked: ['Canada', 'Mexico'],
                disabled: true

        f.input :select,
                as: :select,
                label: 'What day is it?',
                collection: [['Today']],
                selected: 'Today',
                disabled: true
      end
    }, sub: true

    docs 'Error', %{
      simple_form_for :error do |f|
        f.input :error_string,
                label: 'Email Address',
                as: :string,
                input_html: { value: 'Dick Cheney' },
                wrapper_html: { class: 'error' }

        f.input :error_text,
                as: :text,
                label: 'Home Address',
                input_html: { value: 'Dick Cheney' },
                wrapper_html: { class: 'error' }

        f.input :error_select,
                as: :select,
                label: 'Who is our current Vice President?',
                include_blank: false,
                collection: [
                  ['Dick Cheney', 1],
                  ['Joe Biden', 2],
                  ['John Adams', 3]
                ],
                wrapper_html: { class: 'error' }

        f.input :input_with_error do
          f.input_field :input_with_error, as: :string
          span 'There was an error!', class: 'form_error'
        end
      end
    }, sub: true


    hr

    h3 'Appearance'

    docs 'Large inputs', %{
      simple_form_for :large_inputs do |f|

        f.input :large_string,
          label: 'Large input',
          as: :string,
          input_html: { class: 'large' }

        f.input :large_text,
                label: 'Large textarea',
                as: :text,
                input_html: { class: 'large', rows: 4 }

        f.input :large_select,
                label: 'Large native dropdown',
                collection: ['Option 1', 'Option 2', 'Option 3'],
                as: :select,
                input_html: { class: 'large' }

        f.input :large_dropdown_select,
                label: 'Large rich-text dropdown',
                collection: [['All', 'action', 'Get notified whenever a bill becomes a law.'], ['None', 'action', 'Remain ignorant of all incoming legislation.']],                as: :dropdown_select,
                input_html: { class: 'large' }
      end
    }, sub: true


    docs 'Small inputs', %{
      simple_form_for :small_inputs do |f|

        f.input :small_string,
                label: 'Small text input',
                as: :string,
                input_html: { class: 'small' }

        f.input :small_select,
                label: 'Small native dropdown',
                collection: ['Option 1', 'Option 2', 'Option 3'],
                as: :select,
                input_html: { class: 'small' }

        f.input :small_dropdown_select,
                label: 'Small rich-text dropdown',
                collection: [['All', 'action', 'Get notified whenever a bill becomes a law.'], ['None', 'action', 'Remain ignorant of all incoming legislation.']],
                as: :dropdown_select,
                input_html: { class: 'small' }

        label(class: 'control small') {
          input type: 'checkbox', checked: true
          text 'Show the Cents field'
        }

      end
    }, hint: 'Use small inputs to style advanced, information-dense options. Or, place them under regular inputs to differentiate primary and secondary settings.', sub: true

    docs 'Horizontal Forms', %{
      simple_form_for :horizontal, wrapper: :horizontal do |f|

        f.input :name do
          div(class: 'form_item_two_inputs') {
            f.input_field :first_name, as: :string, placeholder: 'First name'
            f.input_field :last_name, as: :string, placeholder: 'Last name'
          }
        end

        f.input :string,
                as: :string,
                label: 'Email Address',
                input_html: { value: 'admin@dobt.co' }

        f.input :radio,
                as: :radio_buttons,
                collection: ['Enthusiastic', 'Indifferent', 'Antagonistic'],
                label: 'What are your thoughts on the Bilderberg Group?',
                checked: 'Indifferent'

        f.input :text,
                as: :text,
                label: 'Description',
                input_html: { rows: 5, value:  sample_paragraph }

        div(class: 'form_actions horizontal') {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    }, hint: 'When using horizontal forms, keep each label brief.', sub: true

    docs 'Input groups', %{
      simple_form_for :input_groups do |f|

        f.input :permalink do
          div(class: 'input_group') {
            div(class: 'input_group_input') {
              f.input_field :input_group_with_copy,
                            as: :string,
                            value: 'http://dobt.forms.fm',
                            'aria-label' => 'Permalink'
            }
            div(class: 'input_group_append') {
              a(class: 'button small info',
                'data-toggle' => 'tooltip',
                'data-container' => 'body',
                title: 'Copy URL',
                'aria-label' => 'Copy URL') {
                i(class: 'fa fa-copy')
              }
            }
          }
        end

        f.input :enter_your_age do
          div(class: 'input_group input_group_text') {
            div(class: 'input_group_input') {
              f.input_field :input_group,
                            as: :string,
                            'aria-label' => 'Age'
            }
            div(class: 'input_group_append') {
              span 'years young'
            }
          }
        end

        f.input :small_input_group do
          div(class: 'input_group input_group_small') {
            div(class: 'input_group_input') {
              f.input_field :small_input_group,
                            as: :string,
                            value: 'http://dobt.forms.fm',
                            'aria-label' => 'Small input group',
                            class: 'small'
            }
            div(class: 'input_group_append') {
              a(class: 'button small info',
                'data-toggle' => 'tooltip',
                'data-container' => 'body',
                title: 'Copy URL',
                'aria-label' => 'Copy URL') {
                i(class: 'fa fa-copy')
              }
            }
          }
        end

        f.input :example_of_prepended_input do
          div(class: 'input_group input_group_text') {
            div(class: 'input_group_prepend') {
              a(class: 'button small') {
                i(class: 'fa fa-eye')
              }
            }
            div(class: 'input_group_input') {
              f.input_field :input_group,
                            as: :string,
                            'aria-label' => 'Example of prepended button'
            }
          }
        end
      end

      simple_form_for :datetime_picker do |f|
        f.input :pick_a_date_and_time,
                as: :datetime_picker,
                clear_text: 'Clear'
      end

      div {
        text 'Date chosen: '
        span 'none', class: 'js_dt_result'
      }
    }, sub: true

    docs 'Filter form', %{
      form(class: 'filter_form input_group') {
        div(class: 'input_group_input') {
          i(class: 'fa fa-search')
          a(href: '#') {
            i(class: 'fa fa-times-circle filter_form_icon_right')
          }
          input(type: 'text', placeholder: 'Search your projects', 'aria-label' => 'Search your projects')
        }
        div(class: 'input_group_append') {
          button 'Search', class: 'button small'
        }
      }
    }, sub: true


    hr

    docs 'Microcopy Box', %{
      simple_form_for :microcopyexample do |f|
        f.input :check_boxes,
                as: :check_boxes,
                label: false,
                collection: ['I want to accept credit card payments.'],
                checked: 'I want to accept credit card payments.'

      end

      div(class: 'microcopy') {
        p 'To accept payments, you must first sign in to your payment provider.'
        a 'Connect to Stripe', class: 'button small info block'
      }
    }, hint: 'Use this to display additional actions that should be hidden until a setting is enabled.'

    h3 'Buttons'

    docs 'Simple', %{
      div(class: 'dvlcore_button_array') {
        a 'Yo!', href: '#', class: 'button'
        a 'Info', href: '#', class: 'button info'
        label 'Info', href: '#', class: 'button info'
        a 'Primary', href: '#', class: 'button primary'
        a 'Success', href: '#', class: 'button success'
        a 'Error', href: '#', class: 'button error'
        a 'Subtle', href: '#', class: 'button subtle'
        a 'Subtle', href: '#', class: 'button subtle'
      }
    }, sub: true

    docs 'Toggle buttons', %{
      div(class: 'dropdown') {
        a 'Dropdown',
          'data-toggle' => 'dropdown',
          href: '#',
          class: 'button toggle'

        div(class: 'dropdown_menu') {
          ul(class: 'dropdown_body') {
            li { a 'Option 1' }
            li { a 'Option 2' }
            li { a 'Option 3' }
          }
        }
      }
    }, hint: 'Use the <code>.toggle</code> class for buttons which summon a dropdown.'.html_safe, sub: true

    docs 'Button with icons', %{
      div(class: 'dvlcore_button_array') {
        a(class: 'button info icon_l') {
          i(class: 'fa fa-caret-left')
          text 'Previous'
        }
        a(class: 'button info icon_r') {
          text 'Next'
          i(class: 'fa fa-caret-right')
        }
        a(class: 'button info icon_r') {
          text 'Submit'
          i(class: 'fa fa-long-arrow-right')
        }
        a(class: 'button primary icon_l') {
          i(class: 'fa fa-eye')
          text 'View'
        }
        a(class: 'button primary icon_r') {
          text 'Go to site'
          i(class: 'fa fa-external-link')
        }
      }
    }, sub: true

    docs 'Disabled', %{
      div(class: 'dvlcore_button_array') {
        a 'Yo!', class: 'button disabled'
        a 'Info', class: 'button info disabled'
        a 'Primary', class: 'button primary disabled'
        a 'Success', class: 'button success disabled'
        a 'Error', class: 'button error disabled'
      }
    }, hint: %{Buttons with the <code>.subtle</code> class have no disabled state. Instead, they should not be displayed on the page.}.html_safe, sub: true

    docs 'Button sizes', %{
      div(class: 'dvlcore_button_array') {
        a 'Large', class: 'button large'
        a 'Normal', class: 'button'
        a 'Small', class: 'button small'
        a 'Mini', class: 'button mini'
      }
    }, sub: true

    docs 'Tertiary buttons', %{
      p {
        a 'Contact Your Local Representative', class: 'uppercase'
      }
      p {
        a 'Send an email', class: 'button_uppercase'
      }
    }, sub: true, hint: %{Add the <code>.uppercase</code> or <code>.button_uppercase</code> class to any link to downplay a tertiary action. For example:}.html_safe
  end

  def sample_paragraph
    %{
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
      nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
      eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt
      in culpa qui officia deserunt mollit anim id est laborum.
    }.squish
  end
end
