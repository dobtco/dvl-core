class Views::Home::Buttons < Views::Base
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
    }

    docs 'Button with form', %{
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
    }

    docs 'Fancy stuff', %{
      a.button.info.arrow_l 'arrow_l'
      br
      a.button.info.arrow 'arrow'
      br
      a.button.info.long_arrow 'long_arrow'
      br
      a.button.info.loading {
        text 'loading'
        i(class: 'fa fa-refresh fa-spin')
      }
    }

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
    }

    docs 'Sizes', %{
      a.button.large.block 'Yo!'
      br
      a.button.large 'Yo!'
      text ' '
      a.button 'Yo!'
      text ' '
      a.button.small 'Yo!'
      text ' '
      a.button.mini 'Yo!'
    }

    docs 'Other buttons', %{
      a.button_uppercase 'Uppercase'
      text ' '
      a.button_link 'Link'
    }
  end
end
