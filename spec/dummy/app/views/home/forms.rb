class Views::Home::Forms < Views::Page
  def main
    h2 'Forms'

    h3 'Form elements'

    docs 'Basic', %{
      simple_form_for :basic do |f|
        f.input :string,
                as: :string,
                label: 'Text',
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                hint: "Use hint text if the input can't be fully described by its label. Keep this text brief.".html_safe

        f.input :text,
                as: :text,
                label: 'Textarea',
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

        f.input :radio,
                as: :radio_buttons,
                collection: ['Enthusiastic', 'Indifferent', 'Antagonistic'],
                label: 'What are your thoughts on your Bilderberg Group?',
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

        label.control.control_minus {
          input type: 'checkbox', checked: true
          text 'Select all items'
        }
        div.form_hint 'This is a partially selected checkbox. In this example, only some items are selected.'

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
    }, sub: ''

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
                include_blank: true
      end
    }, hint: 'This component lets you add long answer options, or descriptive text to each option, while imitating the behavior of a native <code>&lt;select&gt;</code>.'.html_safe, sub: ''

    hr

    h3 'States'

    docs "Disabled / &ldquo;read only&rdquo;".html_safe, %{
      simple_form_for :disabled do |f|
        f.input :string,
                as: :string,
                label: 'Text',
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                disabled: true

        f.input :text,
                as: :text,
                label: 'Textarea',
                input_html: { rows: 5, value:  Faker::Lorem.paragraph },
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
    }, sub: ''

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

        span.form_error 'There was an error!'
      end
    }, sub: ''


    hr

    h3 'Appearance'

    docs 'Large Inputs', %{
      simple_form_for :large_inputs do |f|
        f.input :large_string,
                label: 'Name',
                as: :string,
                input_html: { class: 'large' }

        f.input :large_text,
                label: 'Description',
                as: :text,
                input_html: { class: 'large', rows: 4 }
      end
    }, sub: ''

    docs 'Horizontal Forms', %{
      simple_form_for :horizontal, wrapper: :horizontal do |f|

        f.input :name do
          div.form_item_two_inputs {
            f.input_field :first_name, as: :string, placeholder: 'First name'
            f.input_field :last_name, as: :string, placeholder: 'Last name'
          }
        end

        f.input :string,
                as: :string,
                label: 'Email Address',
                input_html: { value: Faker::Internet.email }

        f.input :radio,
                as: :radio_buttons,
                collection: ['Enthusiastic', 'Indifferent', 'Antagonistic'],
                label: 'What are your thoughts on your Bilderberg Group?',
                checked: 'Indifferent'

        f.input :text,
                as: :text,
                label: 'Description',
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

        div.form_actions.horizontal {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    }, hint: 'When using horizontal forms, keep each label brief.', sub: ''

    docs 'Input groups', %{
      simple_form_for :input_groups do |f|

        f.input :permalink do
          div.input_group {
            f.input_field :input_group_with_copy,
                          as: :string,
                          value: 'http://dobt.forms.fm'
            a(class: 'button small info',
              'data-toggle' => 'tooltip',
              'data-container' => 'body',
              title: 'Copy URL') {
              i(class: 'fa fa-copy')
            }
          }
        end

        f.input :enter_your_age do
          div.input_group {
            f.input_field :input_group,
                          as: :string
            span.input_group_text 'years young'
          }
        end
      end

    }, sub: ''

    docs 'Filter form', %{
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
    }, sub: ''


    hr

    docs 'Microcopy Box', %{
      simple_form_for :microcopyexample do |f|
        f.input :check_boxes,
                as: :check_boxes,
                label: false,
                collection: ['I want to accept credit card payments.'],
                checked: 'I want to accept credit card payments.'

      end

      p.microcopy {
        span 'To accept payments, you must first sign in to your payment provider. '
        a.button.primary 'Connect to Stripe'
      }
    }, hint: 'Use this to display additional actions that should be hidden until a setting is enabled.'

    h3 'Buttons'

    docs 'Simple', %{
      div.dvlcore_button_array {
        a.button 'Yo!'
        a.button.info 'Info'
        a.button.primary 'Primary'
        a.button.success 'Success'
        a.button.subtle 'Subtle'
      }
    }, sub: ''

    docs 'Toggle buttons', %{
      div.dropdown {
        a.button.toggle 'Dropdown',
                          'data-toggle' => 'dropdown',
                          href: '#'
        div.dropdown_menu(role: 'menu') {
          ul.dropdown_body {
            li { a 'Option 1' }
            li { a 'Option 2' }
            li { a 'Option 3' }
          }
        }
      }
    }, hint: 'Use the <code>.toggle</code> class for buttons which summon a dropdown.'.html_safe, sub: ''

    docs 'Button with arrows', %{
      div.dvlcore_button_array {
        a.button.info.arrow_l 'Previous'
        a.button.info.arrow 'Next'
        a.button.info.long_arrow 'Submit'
        a.button.info.loading {
          text 'Loading state'
          i(class: 'fa fa-refresh fa-spin')
        }
      }
    }, sub: ''

    docs 'Disabled', %{
      div.dvlcore_button_array {
        a.button.disabled 'Yo!'
        a.button.info.disabled 'Info'
        a.button.primary.disabled 'Primary'
        a.button.success.disabled 'Success'
      }
    }, hint: %{Buttons with the <code>.subtle</code> class have no disabled state. Instead, they should not be displayed on the page.}.html_safe, sub: ''

    docs 'Button sizes', %{
      div.dvlcore_button_array {
        a.button 'Normal'
        a.button.small 'Small'
        a.button.mini 'Mini'
      }
    }, sub: ''

    docs 'Tertiary buttons', %{
      p {
        a.uppercase 'Contact Your Local Representative'
      }
    }, sub: '', hint: %{Add the <code>.uppercase</code> class to any link to downplay a tertiary action. For example:}.html_safe
  end
end
