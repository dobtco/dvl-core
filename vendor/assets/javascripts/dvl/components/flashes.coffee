FLASH_ALERT_LENGTH = 3500
TRANSITION_LENGTH = 300

hideFlash = ($flash) ->
  $flash.addClass('is_hiding')

  $flash.on 'fakeTransitionEnd', ->
    $flash.remove()
  .emulateTransitionEnd(TRANSITION_LENGTH)

window.DvlFlash = (flashType, message, linksHTML) ->
  # Remove existing flashes
  $('.flash').remove()

  $flash = $("""
    <div class="flash flash_#{flashType}">
      <span>#{message}</span>
      <a class='flash_close' href='#'>&times;</a>
    </div>
  """)

  $flash.on 'click', '.flash_close', ->
    hideFlash($flash)

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
      hideFlash($flash)
    , FLASH_ALERT_LENGTH

$(document).on 'page:before-unload', ->
  $('.flash').remove()
