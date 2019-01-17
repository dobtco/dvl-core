FLASH_ALERT_LENGTH = 3500
TRANSITION_LENGTH = 300

Dvl.FlashHide = ($flash) ->
  $flash.addClass('is_hiding')

  if $.support.transition
    $flash.on 'bsTransitionEnd', ->
      $flash.remove()
    .emulateTransitionEnd(TRANSITION_LENGTH)
  else
    $flash.remove()

Dvl.Flash = (flashType, message, linksHTML, flashLength = FLASH_ALERT_LENGTH) ->
  # Remove existing flashes
  $('.flash').remove()

  $flash = $("""
    <div class="flash flash_#{flashType}">
      <span>#{message}</span>
      <a class='flash_close' href='#'>&times;</a>
    </div>
  """)

  $flash.on 'click', '.flash_close', ->
    Dvl.FlashHide($flash)

  if linksHTML
    $flash.append("
      <div class='flash_links'>#{linksHTML}</span>
    ")

  $flash.appendTo('body')

  # Push this to the next frame so that the transition works :/
  setTimeout ->
    $flash.addClass('is_visible')
  , 0

  # Hide flashes automatically unless they have links
  unless linksHTML
    setTimeout ->
      Dvl.FlashHide($flash)
    , flashLength

$(document).on 'page:before-unload', ->
  $('.flash').remove()
