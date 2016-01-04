# Subscribe folks to our "House List" on Campaign Monitor
$(document).on 'submit', '.newsletter_form', (e) ->
  e.preventDefault()
  $input = $(@).find('input[type=email]')
  return unless $input.val()

  $.ajax
    url: '//dobt.createsend.com/t/t/s/dijhkj/?callback=?'
    type: 'get',
    dataType: 'json'
    data:
      'cm-dijhkj-dijhkj': $input.val()
    success: (data) ->
      if data.Status == 400
        $input.flashPlaceholder('Whoops, an error occurred!', 2000)
      else
        $input.flashPlaceholder('Thanks!', 2000)

  $input.flashPlaceholder('Subscribing...')
  $input.blur()

