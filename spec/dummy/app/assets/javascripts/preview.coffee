$ ->
  $('[data-toggle="tooltip"]').tooltip()
  $('body').styledSelect(blank: 'Choose an option')
  $('body').styledControls()
  $('body').dropdownSelect(blank: 'Choose an option')
  $("input.datetime_picker").datetimePicker()

$(document).on 'click', '.docs_toggle_button', ->
  $(@).closest('.docs_item').find('.docs_code').toggle()

$(document).on 'update.dtpicker', '#datetime_picker_deadline', (_, ts) ->
  $('.js_dt_result').html(ts || '&nbsp;')
