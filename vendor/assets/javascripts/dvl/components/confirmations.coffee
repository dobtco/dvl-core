Dvl.Confirmations = {}

class Dvl.Confirmations.Popover
  defaults:
    t_cancel: 'Cancel'
    t_delete: 'Delete'

  constructor: ($el, message, cb) ->
    @$el = $el

    if (instance = @$el.data('popover-confirmation'))
      return instance.destroy()

    @$el.data('popover-confirmation', @)

    @options = $.extend {}, @defaults, @$el.data('confirmation-options')

    if message
      wrappedMessage = """
        <div class='popover_delete_confirmation_message'>
          #{message}
        </div>
      """

    @$el.popover
      html: true
      content: """
        <div class='popover_delete_confirmation'>
          #{wrappedMessage || ''}
          <a class='button error js-confirm-delete' href='#'>#{@options.t_delete}</a>
          <a class='button' href='#'>#{@options.t_cancel}</a>
        </div>
      """
      trigger: 'manual'
      placement: 'bottom'

    @$el.popover('show')

    $tip = @$el.data('bs.popover').$tip

    $tip.on 'click', '.button', (e) =>
      cb() if $(e.target).hasClass('js-confirm-delete')
      @destroy()
      @$el.popover('destroy')

    $('body').on 'click.delete_confirmation_body', (e) =>
      unless $.contains($tip[0], e.target) || $.contains(@$el[0], e.target)
        @destroy()

  destroy: ->
    @$el.popover('destroy')
    $('body').off 'click.delete_confirmation_body'
    @$el.removeData('popover-confirmation')

class Dvl.Confirmations.Modal
  defaults:
    t_generic: 'This is a destructive action. Please confirm.'
    t_title: 'Are you sure?'
    t_cancel: 'Cancel'
    t_confirm: 'Confirm'

  constructor: ($el, message, cb) ->
    @options = $.extend {}, @defaults, $el.data('confirmation-options')

    message ||= @options.t_generic

    $modal = Dvl.Modal.init(
      Dvl.Modal.getHTML(title: @options.t_title),
      removeOnClose: true
    )

    $modal.
      addClass('modal_confirm').
      find('.modal_content').
      append """
        <div class='modal_body'><p>#{message}</p></div>
        <div class='modal_footer'>
          <div class='modal_footer_primary'>
            <a class='button white' data-dismiss='modal'>
              #{@options.t_cancel}
            </a>
            <button class='button error confirm_button'>#{@options.t_confirm}</button>
          </div>
        </div>
      """

    $modal.one 'click', '.confirm_button', ->
      cb()

      $modal.
        modal('hide').
        remove()

    $modal.find('button.error').focus()
