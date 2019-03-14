$.rails.allowAction = ($link) ->
  if !$link.attr('data-confirm')? || $link.data('confirmed')
    return true

  cb = ->
    $link.data('confirmed', true)
    $link.trigger('click.rails')

  showModal = (options = {}) =>
    new Dvl.Confirmations[if $link.data('confirm-with') == 'popover' then 'Popover' else 'Modal'](
      $link,
      $link.attr('data-confirm'),
      cb,
      options
    )
    return false

  href = $link.data('confirm-endpoint')
  callback = $link.data('confirm-call') 
  if App? && App[callback]?
    App[callback](showModal, cb, href)
  else
    options = {}
    if title = $link.data('confirm-title')
      options = $.extend(options, {title: title})
    showModal(options)

  return false
