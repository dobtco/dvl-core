SimpleForm::Inputs::Base.default_options = {
  # Add the 'control' class to radio/checkbox labels
  item_label_class: 'control'
}

SimpleForm.setup do |config|
  config.wrappers :horizontal, tag: 'div', class: 'form_horiz', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use(:judge) if defined?(Judge)

    b.wrapper tag: 'div', class: 'form_horiz_label' do |ba|
      ba.use :label
    end

    b.wrapper tag: 'div', class: 'form_horiz_input' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'span', class: 'error_message' }
      ba.use :hint,  wrap_with: { tag: 'div', class: 'help-block' }
    end
  end

  config.wrappers :vertical, tag: 'div', class: 'form_vert', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use(:judge) if defined?(Judge)

    b.wrapper tag: 'div', class: 'form_vert_label' do |ba|
      ba.use :label
    end

    b.wrapper tag: 'div', class: 'form_vert_input' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'span', class: 'error_message' }
      ba.use :hint,  wrap_with: { tag: 'div', class: 'help-block' }
    end
  end

  config.default_wrapper = :vertical

  # Boolean checkboxes
  config.boolean_style = :nested
  config.boolean_label_class = 'control'

  # Default button class
  config.button_class = 'button'

  # Don't wrap checkboxes/radios *again*
  config.item_wrapper_tag = false

  config.label_text = lambda { |label, required, _| "#{label} #{required}" }

  # Don't use html5 validations... yet :)
  config.browser_validations = false
end
