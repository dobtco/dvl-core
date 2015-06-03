$.rails.allowAction = ($link) ->
  return true unless $link.attr('data-confirm')?

  DvlDeleteConfirmation $link, ->
    $link.removeAttr('data-confirm')
    $link.trigger('click.rails')

  false

window.DvlDeleteConfirmation = ($el, cb) ->
  $el.popover
    html: true
    content: """
      <div class='popover_delete_confirmation'>
        <a class='button error js-confirm-delete' href='#'>Delete</a>
        <a class='button' href='#'>Cancel</a>
      </div>
    """
    trigger: 'manual'
    placement: 'bottom'

  $el.popover('show')

  $tip = $el.data('bs.popover').$tip

  $tip.on 'click', '.button', ->
    cb() if $(@).hasClass('js-confirm-delete')
    $el.popover('destroy')

  $('body').on 'click.delete_confirmation_body', (e) ->
    unless $.contains($tip[0], e.target)
      $el.popover('destroy')
      $('body').off 'click.delete_confirmation_body'
