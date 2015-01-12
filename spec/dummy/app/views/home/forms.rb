class Views::Home::Forms < Views::Base
  def main
    docs 'Forms' do
      simple_form_for :foo do |f|
        f.input :string,
                as: :string

        f.input :string,
                as: :string,
                label: 'I am a sub-label in a respondent form',
                required: false,
                label_html: {
                  class: 'sub_label'
                }

        f.input :radio,
                as: :radio_buttons,
                collection: ['Foo', 'Bar'],
                checked: 'Foo'

        f.input :disabled_radio,
                as: :radio_buttons,
                collection: ['I am a disabled radio'],
                disabled: true

        f.input :checkbox,
                as: :check_boxes,
                collection: ['Foo', 'Bar'],
                checked: 'Bar'

        f.input :disabled_checkbox,
                as: :check_boxes,
                collection: ['I am a disabled checkbox'],
                disabled: true

        f.input :boolean,
                as: :boolean,
                inline_label: 'Do you like simple_form inputs?',
                hint: 'This is the hint text'

        f.input :input_sub do
          div.input_sub {
            f.input_field :sub_input,
                          as: :check_boxes,
                          collection: ['I am a sub-input']
          }
        end

        f.input :input_group do
          div.input_group {
            f.input_field :input_group,
                          as: :string,
                          placeholder: 'I am an input-group'
            a.button.small '✓'
          }
        end

        f.input :select,
                as: :select,
                collection: [
                  ['I am a regular select', 1],
                  ['I am another option', 2],
                  ['I am another longer option that is really long and stuff', 3]
                ],
                selected: 'I am a regular select',
                include_blank: true

        f.input :bar,
                      as: :dropdown_select,
                      collection: [
                        ['I am a dropdown-select', 'B', 'C'],
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

        div.form_actions {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    end
  end
end
