class DropdownSelectInput
  defaults:
    width: undefined # options are numeric (pixel units), 'full', or 'auto'
    blank: '' # text to display when blank option selected

  constructor: ($el, options) ->
    @$el = $el
    @options = $.extend({}, @defaults, options)
    @$input = $el.find('input')
    @$toggle = $el.find('[data-toggle=dropdown]')

    for i in ['width', 'blank']
      @options[i] = @$input.data(i) if @$input.data(i)?

    for i in ['small', 'large']
      @$el.addClass(i) if @$input.hasClass(i)

    @setWidth()
    @$el.on 'click', 'a[data-value]', $.proxy(@_onClick, @)

    # Push to next frame in order to allow any other initializers to run
    # See https://github.com/dobtco/dvl-core/issues/96
    setTimeout =>
      @_setText()
    , 0

  _onClick: (e) ->
    $a = $(e.currentTarget)

    @$input.
      val($a.data('value')).
      trigger('input').
      trigger('change')

    $a.
      closest('li').
      addClass('active').
      siblings().
      removeClass('active')

    @_setText()
    @$toggle.focus()

  _setText: ->
    newText = @$el.find('li.active .drop_rich_head').text()

    if @$input.val()
      @$toggle.text(newText)
      @$toggle.removeClass('is_blank')
    else
      @$toggle.text(@options.blank || newText)
      @$toggle.addClass('is_blank')

  setWidth: ->
    if @options.width == 'full'
      @$el.addClass 'full'
    else if @options.width == 'auto'
      @$el.addClass 'auto'
    else if @options.width
      @$el.width(@options.width)

$.fn.extend dropdownSelect: (option, args...) ->
  $(@).find('[data-dropdown-select]').each ->
    data = $(@).data('dropdown-select-input')

    if !data
      $(@).data 'dropdown-select-input', (data = new DropdownSelectInput($(@), option))
    if typeof option == 'string'
      data[option].apply(data, args)
