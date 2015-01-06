require 'erector'

class Dvl::Components::Modal < Erector::Widget
  needs :title,
        id: nil,
        html_opts: {}

  def content
    div(@html_opts.merge(class: "modal #{@html_opts[:class]}", tabindex: '-1', id: @id)) {
      div.modal_dialog {
        div.modal_content {
          div.modal_header {
            a.close '&times;'.html_safe, 'data-dismiss' => 'modal'
            h3 @title.html_safe
          }

          modal_content
        }
      }
    }
  end

  def modal_content
    call_block
  end
end
