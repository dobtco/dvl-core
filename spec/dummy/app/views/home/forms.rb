class Views::Home::Forms < Views::Base
  def main
    docs 'Basic Forms', %{
      simple_form_for :basic do |f|
        f.input :string,
                as: :string,
                input_html: { value: Faker::Lorem.words(3).join(' ') }

        f.input :text,
                as: :text,
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

        f.input :your_name do
          div.form_item_two_inputs {
            f.input_field :first_name, as: :string, placeholder: 'First name'
            f.input_field :last_name, as: :string, placeholder: 'Last name'
          }
        end

        f.input :radio,
                as: :radio_buttons,
                collection: ['Foo', 'Bar'],
                checked: 'Foo'

        f.input :checkbox,
                as: :check_boxes,
                collection: ['Foo', 'Bar'],
                checked: 'Bar'

        f.input :boolean,
                as: :boolean,
                inline_label: 'Do you like simple_form inputs?',
                hint: 'This is the hint text'

        f.input :select,
                as: :select,
                collection: [
                  ['I am a regular select', 1],
                  ['I am another option', 2],
                  ['I am another longer option that is really long and stuff', 3]
                ],
                include_blank: true

        f.input :input_sub do
          div.input_sub {
            f.input_field :sub_input, as: :check_boxes, collection: ['I am a sub-input']
          }
        end

        div.form_actions {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    }

    docs 'Horizontal Forms', %{
      simple_form_for :horizontal, wrapper: :horizontal do |f|
        f.input :string,
                as: :string,
                input_html: { value: Faker::Lorem.words(3).join(' ') }

        f.input :text,
                as: :text,
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

        div.form_actions.horizontal {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    }, full: true

    docs 'Error state', %{
      simple_form_for :error do |f|
        f.input :error_string,
                as: :string,
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                wrapper_html: { class: 'error' }

        f.input :error_text,
                as: :text,
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                wrapper_html: { class: 'error' }

        f.input :error_select,
                as: :select,
                collection: [
                  ['I am a regular select', 1],
                  ['I am another option', 2],
                  ['I am another longer option that is really long and stuff', 3]
                ],
                wrapper_html: { class: 'error' }

        span.form_error 'There was an error!'
      end
    }, hint: 'Error states should still show the focus state when focused.'

    docs 'Disabled state', %{
      simple_form_for :disabled do |f|
        f.input :string,
                as: :string,
                input_html: { value: Faker::Lorem.words(3).join(' ') },
                disabled: true

        f.input :text,
                as: :text,
                input_html: { rows: 5, value:  Faker::Lorem.paragraph },
                disabled: true

        f.input :disabled_radio,
                as: :radio_buttons,
                collection: ['I am a disabled radio', 'Checked'],
                checked: 'Checked',
                disabled: true

        f.input :disabled_checkbox,
                as: :check_boxes,
                collection: ['I am a disabled checkbox', 'Checked'],
                checked: 'Checked',
                disabled: true

        f.input :select,
                as: :select,
                collection: [['Foo']],
                selected: 'Foo',
                include_blank: true,
                disabled: true
      end
    }, hint: 'Note that disabled and readonly have the same visual style.'

    docs 'Selects', %{
      simple_form_for :selects do |f|
        f.input :bar,
                as: :dropdown_select,
                collection: [
                  ['I am a dropdown-select this is supier long and probably overflwos onto the next line aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'B', 'C'],
                  ['D', 'E', 'F']
                ]

        f.input :"90_dropdown_select",
                as: :dropdown_select,
                collection: [['Foo', 'Bar', 'Baz']],
                input_html: { 'data-width' => '90%' }

        f.input :full_width_select,
                      as: :select,
                      collection: ['Full width'],
                      include_blank: false,
                      input_html: { 'data-width' => 'full' }

        f.input :auto_width_select,
                      as: :select,
                      collection: ['Auto width'],
                      include_blank: false,
                      input_html: { 'data-width' => 'auto' }

        f.input :"100_width_select",
                      as: :select,
                      collection: ['100 width'],
                      include_blank: false,
                      input_html: { 'data-width' => '100' }

        f.input :blank_select,
                as: :select,
                collection: ['100 width'],
                include_blank: true

        f.input :blank_dropdown_select,
                as: :dropdown_select,
                collection: [['A', 'B', 'C']],
                include_blank: true
      end
    }

    docs 'Input groups', %{
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
    }

    docs 'Microcopy', %{
      p.microcopy {
        text 'When providing '
        a 'Change signature?'
      }
    }

    docs 'Large inputs', %{
      simple_form_for :large_inputs do |f|
        f.input :large_string,
                as: :string,
                input_html: { class: 'large' }

        f.input :large_text,
                as: :text,
                input_html: { class: 'large', rows: 4 }
      end
    }

    docs 'Alternate icons', %{
      label.control.control_minus {
        input type: 'checkbox', checked: true
        text 'This is a control_minus'
      }
    }
  end
end
