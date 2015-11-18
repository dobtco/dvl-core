class Views::Home::Regression::ModalSwitch < Views::Base
  def render_body
    widget Dvl::Components::Modal.new(title: 'One', id: 'modal1') {
      div.modal_body {
        p 'Hi!'
      }
    }

    widget Dvl::Components::Modal.new(title: 'Two', id: 'modal2') {
      div.modal_body {
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
