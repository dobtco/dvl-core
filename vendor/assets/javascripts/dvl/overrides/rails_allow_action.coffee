$.rails.allowAction = ($link) ->
  if !$link.attr('data-confirm')? || $link.data('confirmed')
    return true

  cb = ->
    $link.data('confirmed', true)

    if $.rails.isRemote($link)
      $.rails.handleRemote($link)
    else
      $.rails.handleMethod($link)

  new Dvl.Confirmations[if $link.data('confirm-with') == 'popover' then 'Popover' else 'Modal'](
    $link,
    $link.attr('data-confirm'),
    cb
  )

  return false
