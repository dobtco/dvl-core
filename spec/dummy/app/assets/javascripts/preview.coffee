$(document).on 'click', '.docs_toggle_button', ->
  $(@).closest('.docs_item').find('.docs_code').toggle()
