class Views::Home::Forms < Views::Base
  def main
    docs 'Basic Forms', %{
      simple_form_for :foo do |f|
        f.input :string,
                as: :string,
                input_html: { value: Faker::Lorem.words(3).join(' ') }

        f.input :text,
                as: :text,
                input_html: { rows: 5, value:  Faker::Lorem.paragraph }

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

    docs 'Error state', %{
      simple_form_for :foo do |f|
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

        span.error_message 'There was an error!'
      end
    }, hint: 'Error states should still show the focus state when focused.'

    docs 'Disabled state', %{
      simple_form_for :foo do |f|
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
      simple_form_for :foo do |f|
        f.input :bar,
                      as: :dropdown_select,
                      collection: [
                        ['I am a dropdown-select this is supier long and probably overflwos
                          onto the next line aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'B', 'C'],
                        ['D', 'E', 'F']
                      ]

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
      end
    }

    docs 'Input groups', %{
      simple_form_for :foo do |f|
        f.input :input_group do
          div.input_group {
            f.input_field :input_group,
                          as: :string,
                          placeholder: 'I am an input-group'
            a.button.small '✓'
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

    docs 'Large inputs', %{
      simple_form_for :foo do |f|
        f.input :large_string,
                as: :string,
                input_html: { class: 'large' }

        f.input :large_text,
                as: :text,
                input_html: { class: 'large', rows: 4 }
      end
    }
  end
end
