Dvl.Confirmations = {}

class Dvl.Confirmations.Popover
  defaults:
    'cancel-text': 'Cancel'
    'cancel-class': ''
    'confirm-class': 'error'
    'confirm-text': 'Delete'
    'popover-opts': {}
    # cancelCb:

  constructor: ($el, message, cb, opts = {}) ->
    @$el = $el

    if (instance = @$el.data('popover-confirmation'))
      return instance.destroy()

    @$el.data('popover-confirmation', @)

    @options = $.extend {}, @defaults, opts

    for i of @defaults
      @options[i] = @$el.data(i) if @$el.data(i)?

    if message
      wrappedMessage = """
        <div class='popover_confirmation_message'>
          #{message}
        </div>
      """

    @$el.popover(
      $.extend({
        html: true
        content: """
          <div class='popover_confirmation'>
            #{wrappedMessage || ''}
            <a class='button #{@options['confirm-class']} js-popover-confirm' href='#'>#{@options['confirm-text']}</a>
            <a class='button #{@options['cancel-class']} js-popover-cancel' href='#'>#{@options['cancel-text']}</a>
          </div>
        """
        trigger: 'manual'
        placement: 'bottom'
      }, @options['popover-opts'])
    )

    @$el.popover('show')

    $tip = @$el.data('bs.popover').$tip

    $tip.on 'click', '.button', (e) =>
      if $(e.target).hasClass('js-popover-confirm')
        @$el.trigger('confirm.dvl')
        cb()

      if $(e.target).hasClass('js-popover-cancel')
        @$el.trigger('cancel.dvl')
        @options.cancelCb?()

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
    'generic-message': 'This is a destructive action. Please confirm.'
    'title': 'Are you sure?'
    'cancel-text': 'Cancel'
    'confirm-text': 'Confirm'
    # cancelCb:

  constructor: ($el, message, cb, opts = {}) ->
    @options = $.extend {}, @defaults, opts

    for i of @defaults
      @options[i] = $el.data(i) if $el.data(i)?

    message ||= @options['generic-message']

    $modal = Dvl.Modal.init(
      Dvl.Modal.getHTML(title: @options['title']),
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
              #{@options['cancel-text']}
            </a>
            <button class='button error js-popover-confirm'>#{@options['confirm-text']}</button>
          </div>
        </div>
      """

    $modal.one 'click', '[data-dismiss=modal]', =>
      $el.trigger('cancel.dvl')
      @options.cancelCb?()

    $modal.one 'click', '.js-popover-confirm', ->
      $el.trigger('confirm.dvl')
      cb()

      $modal.
        modal('hide').
        remove()

    $modal.find('.js-popover-confirm').focus()
