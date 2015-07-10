$ ->
  $('[data-toggle="tooltip"]').tooltip()
  $('body').styledSelect(blank: 'Choose an option')
  $('body').styledControls()
  $('body').dropdownSelect(blank: 'Choose an option')

$(document).on 'click', '.docs_toggle_button', ->
  $(@).closest('.docs_item').find('.docs_code').toggle()
