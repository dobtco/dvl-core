class DatetimePickerInput < SimpleForm::Inputs::DateTimeInput
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def initialize(*args)
    super(*args)

    # Format value as iso8601 for javascript new Date() compatibility
    if object && (value = object.send(attribute_name))
      input_html_options[:value] = value.iso8601
    end
  end

  def input(wrapper_options)
    content_tag(:div, class: 'datetime_input_wrapper cf') do
      @builder.hidden_field(attribute_name, input_html_options) +

      content_tag(:div, class: 'input_group datetime_date_group') do
        tag(:input, type: 'text') +
        content_tag(:a, class: 'button small') do
          content_tag :i, class: 'fa fa-calendar' do; end;
        end
      end +

      content_tag(:div, class: 'input_group datetime_time_group') do
        tag(:input, type: 'text') +
        content_tag(:a, class: 'button small') do
          content_tag :i, class: 'fa fa-clock-o' do; end;
        end
      end +

      ( options[:clear_text] ?
          content_tag(:div, class: 'datetime_input_clear_wrapper') do
            content_tag(:a, class: 'datetime_input_clear') do
              options[:clear_text]
            end
          end :
          '')
    end
  end
end
