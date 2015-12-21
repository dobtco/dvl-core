class Views::Base < Fortitude::Widget
  doctype :html5
  use_instance_variables_for_assigns true
  format_output false
  start_and_end_comments false
  extra_assigns :use

  SIMPLE_FORM_FOR_YIELDED_METHODS_TO_OUTPUT =
    Fortitude::Rails::Helpers::FORM_FOR_YIELDED_METHODS_TO_OUTPUT +
    %w{input attribute input_field association button error full_error hint} +
    %w{error_notification simple_fields_for}

  helper(
    :simple_form_for,
    transform: :output_return_value,
    output_yielded_methods: SIMPLE_FORM_FOR_YIELDED_METHODS_TO_OUTPUT
  )
end
