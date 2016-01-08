class Dvl::Core::Views::Modal < Dvl::Core::Views.base_view_class.constantize
  needs :title,
        id: nil,
        html_opts: {}

  def content
    div(@html_opts.merge(class: "modal #{@html_opts[:class]}", tabindex: '-1', id: @id)) {
      div(class: 'modal_dialog') {
        div(class: 'modal_content') {
          div(class: 'modal_header') {
            a '&times;'.html_safe, class: 'close', 'data-dismiss' => 'modal'
            h3 @title
          }

          modal_content
        }
      }
    }
  end

  def modal_content
    yield_from_widget
  end
end
