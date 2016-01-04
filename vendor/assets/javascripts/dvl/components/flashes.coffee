FLASH_ALERT_LENGTH = 3500
TRANSITION_LENGTH = 300

window.DvlFlashHide = ($flash) ->
  $flash.addClass('is_hiding')

  $flash.on 'bsTransitionEnd', ->
    $flash.remove()
  .emulateTransitionEnd(TRANSITION_LENGTH)

window.DvlFlash = (flashType, message, linksHTML) ->
  # Remove existing flashes
  $('.flash').remove()

  $flash = $("""
    <div class="flash flash_#{flashType}">
      <span>#{message}</span>
      <a class='flash_close' href='#'><i class="icon icon_close_sm"></i></a>
    </div>
  """)

  $flash.on 'click', '.flash_close', ->
    DvlFlashHide($flash)

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
      DvlFlashHide($flash)
    , FLASH_ALERT_LENGTH

$(document).on 'page:before-unload', ->
  $('.flash').remove()
