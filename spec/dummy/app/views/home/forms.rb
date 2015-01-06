class Views::Home::Forms < Views::Base
  def main
    docs 'Forms' do
      simple_form_for :foo do |f|
        f.input :string,
                as: :string

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

        div.input_sub {
          f.input_field :sub_input,
                        as: :check_boxes,
                        collection: ['I am a sub-input']
        }

        div.input_group {
          f.input_field :input_group,
                        as: :string,
                        placeholder: 'I am an input-group'
          a.button.small '✓'
        }

        div.form_actions {
          f.button :button, 'Submit', class: 'primary'
        }
      end
    end
  end
end
