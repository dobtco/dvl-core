$ ->
  $('[data-toggle="tooltip"]').tooltip()
  $('body').styledSelect()
  $('body').styledControls()
  $('body').dropdownSelect()
  $("input.datetime_picker").datetimePicker()

$(document).on 'click', '.docs_toggle_button', ->
  $(@).closest('.docs_item').find('.docs_code').toggle()

$(document).on 'update.dtpicker', '#datetime_picker_pick_a_date_and_time', (_, ts) ->
  $('.js_dt_result').html(ts || '&nbsp;')

$(document).on 'ajax:beforeSend', '.delete_list .subtle_icon', ->
  $(@).closest('li').remove()

$(document).on 'ajax:beforeSend', '.js_delete_4 a', ->
  Dvl.Flash('info', 'Your project has been archived.')
