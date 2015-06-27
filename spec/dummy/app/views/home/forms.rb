class Views::Home::Forms < Views::Base
  def main
    h2 'Forms'
    
    h3 'Form elements'

    docs 'Basic', %{
      simple_form_for :basic do |f|
        f.input :string,
                as: :string,
                label: 'Text',
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                hint: "Use hint text if a form label can&#39;t sufficiently explain a UI control. Keep it brief.".html_safe

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
                label: 'Email address',
                as: :string,
                input_html: { value: 'Dick Cheney' },
                wrapper_html: { class: 'error' }

        f.input :error_text,
                as: :text,
                label: 'Address',
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
                input_html: { value: Faker::Lorem.words(3).join(' ') }

        f.input :text,
                as: :text,
                label: 'Description',
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

        div.form_actions.horizontal {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    }, hint: 'When using horizontal forms, keep each label brief.', sub: ''

    docs 'Inputs with buttons', %{
      simple_form_for :input_groups do |f|
        f.input :input_group do
          div.input_group {
            f.input_field :input_group,
                          as: :string,
                          placeholder: 'I am an input-group'
            a.button.small '✓'
          }
        end

        f.input :input_group_with_copy do
          div.input_group {
            f.input_field :input_group_with_copy,
                          as: :string,
                          value: 'http://this.is.a/long/url'
            a.button.small.info {
              i(class: 'fa fa-copy')
            }
          }
        end

        f.input :input_group_with_text do
          div.input_group {
            f.input_field :input_group,
                          as: :string,
                          placeholder: 'I am an input-group'
            span.input_group_text 'things'
          }
        end
      end

      simple_form_for :search do |f|
        div.grid {
          div.item.eight_columns {
            f.input_field :q, as: :string
          }
          div.item.four_columns {
            f.button :button
          }
        }
      end

      select {
        option 'Option'
      }
      text ' '
      a.button 'Go!'
    }, sub: ''


    hr

    docs 'Selects', %{
      simple_form_for :selects do |f|
        f.input :bar,
                as: :dropdown_select,
                collection: [
                  ['I am a dropdown-select this is supier long and probably overflwos onto the next line aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'B', 'C'],
                  ['D', 'E', 'F']
                ]

        f.input :blank_dropdown_select,
                as: :dropdown_select,
                collection: [['A', 'B', 'C']],
                include_blank: true
      end
    }

    docs 'Microcopy', %{
      p.microcopy {
        text 'When providing '
        a 'Change signature?'
      }
    }

    h3 'Buttons'

    docs 'Simple', %{
      a.button 'Yo!'
      text ' '
      a.button.info 'Info'
      text ' '
      a.button.primary 'Primary'
      text ' '
      a.button.success 'Success'
      text ' '
      a.button.white 'White'
    }, sub: ''


    docs 'Button with arrows', %{
      p {
        a.button.info.arrow_l 'Previous'
      }
      
      p {
        a.button.info.arrow 'Next'
      }

      p {
        a.button.info.long_arrow 'Submit'
      }

      p {
        a.button.info.loading {
          text 'Loading state'
          i(class: 'fa fa-refresh fa-spin')
        }
      }
    }, sub: ''

    docs 'Disabled', %{
      a.button.disabled 'Yo!'
      text ' '
      a.button.info.disabled 'Info'
      text ' '
      a.button.primary.disabled 'Primary'
      text ' '
      a.button.success.disabled 'Success'
      text ' '
      a.button.white.disabled 'White'
    }, sub: ''

    docs 'Button sizes', %{
      p { a.button 'Normal'}
      p { a.button.small 'Small'}
      p { a.button.mini 'Mini'}
    }, sub: ''

    docs 'Subtle buttons', %{
      p {
        a.uppercase 'Contact Your Local Representative'
      }
    }, sub: '', hint: %{Add the <code>.uppercase</code> class to any link to downplay a tertiary action. For example:}.html_safe
  end
end
