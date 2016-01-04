class Views::Home::Regression::ModalSwitch < Views::Layout
  def render_body
    widget Dvl::Core::Views::Modal.new(title: 'One', id: 'modal1') {
      div(class: 'modal_body') {
        p 'Hi!'
      }
    }

    widget Dvl::Core::Views::Modal.new(title: 'Two', id: 'modal2') {
      div(class: 'modal_body') {
        p 'Bye!'
      }
    }

    script %{
      $('#modal1').modal('show')

      setTimeout(function(){
        $('#modal1').modal('switch', $('#modal2'));
      }, 1000)
    }.html_safe
  end
end
