TRANSITION_LENGTH = 300
FLASH_ALERT_LENGTH = 3500

# Grab alerts rendered by the server and apply our behavior to them
$ ->
  $('.flash').each ->
    DvlFlash $(@)

window.DvlFlash = (alertType, message, lengthInMilliseconds) ->
  # Initialize from an existing alert
  if alertType instanceof jQuery
    $alert = alertType
  else
    $alert = $("""
      <div class="flash flash_#{alertType}">
        <a class='flash_close'>&times;</a>
        <span>#{message}</span>
      </div>
    """).appendTo("body")

  setTimeout ->
    $alert.addClass 'is_visible'
  , 0

  mousedOver = undefined
  timeoutExpired = undefined

  hide = ->
    $alert.removeClass 'is_visible'
    setTimeout ->
      $alert.remove()
    , TRANSITION_LENGTH

  setTimeout ->
    hide() unless mousedOver
    timeoutExpired = true
  , lengthInMilliseconds || FLASH_ALERT_LENGTH

  $alert.on 'mouseover', ->
    mousedOver = true

    $alert.one 'mouseout', ->
      mousedOver = undefined
      hide() if timeoutExpired

  $alert.on 'click', '.flash_close', ->
    mousedOver = undefined
    hide()
