# Subscribe folks to our "House List" on Campaign Monitor
$(document).on 'submit', '.newsletter_form', (e) ->
  e.preventDefault()
  $input = $(@).find('input[type=email]')
  return unless $input.val()

  $.ajax
    url: 'https://piper.dobt.co/api/subscribe_to_newsletter'
    type: 'post'
    data:
      email: $input.val()
    success: ->
      $input.flashPlaceholder('Thanks!', 2000)
    error: ->
      $input.flashPlaceholder('Whoops, an error occurred!', 2000)

  $input.flashPlaceholder('Subscribing...')
  $input.blur()

