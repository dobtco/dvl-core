class DropdownSelectInput < SimpleForm::Inputs::CollectionInput
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def current_value
    input_html_options[:value] || object.try(:send, attribute_name)
  end

  def selected_option
    if current_value
      collection.find { |x| x[1] == current_value }
    else
      collection.first
    end
  end

  def blank_option
    options[:allow_blank] || options[:include_blank]
  end

  def input(wrapper_options = nil)
    if blank_option
      collection.unshift(
        [blank_option == true ? '' : blank_option, '']
      )
    end

    content_tag(:div, class: 'styled_select_wrapper', 'data-dropdown-select' => true) do
      @builder.hidden_field(attribute_name, input_html_options) +
      content_tag(:a, class: 'styled_select', 'data-toggle' => 'dropdown', href: '#') { selected_option[0] } +
      content_tag(:div, class: 'dropdown_menu dropdown_menu_rich', role: 'menu') {
        content_tag(:ul, class: 'dropdown_body') {
          collection.map do |x|
            li_class_str = [].tap do |arr|
              arr << 'active' if selected_option == x
              arr << 'blank' if x[1].blank?
            end.join(' ').presence

            content_tag(:li, class: li_class_str) {
              content_tag(:a, 'data-value' => x[1], href: '#') {
                content_tag(:strong, class: 'drop_rich_head') { x[0] } +
                content_tag(:span, class: 'drop_rich_subhead') { x[2] }
              }
            }
          end.join('').html_safe
        }
      }
    end
  end
end
