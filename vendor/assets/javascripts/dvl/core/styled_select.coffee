class StyledSelect
  defaults:
    width: undefined # options are numeric (pixel units), 'full', or 'auto'

  constructor: ($el, options) ->
    @$el = $el
    @options = $.extend({}, @defaults, options)

    for i in ['width']
      @options[i] = @$el.data(i) if @$el.data(i)?

    if @$el.data('no-blank-class')?
      @options.noBlankClass = true

    @initWrapper()
    @$el.on 'change', $.proxy(@_change, @)
    @_change()

  initWrapper: ->
    @$wrapper = $('<div class="styled_select_wrapper" />')
    @$span = $('<div class="styled_select" />')
    @setWidth()

    for i in ['small', 'large']
      @$wrapper.addClass(i) if @$el.hasClass(i)

    @$el.wrap(@$wrapper)
    @$span.appendTo(@$el.parent())

  setWidth: ->
    if @options.width == 'full'
      @$wrapper.addClass 'full'
    else if @options.width == 'auto'
      @$wrapper.addClass 'auto'
    else if @options.width
      @$wrapper.width(@options.width)

  _change: ->
    $selected = @$el.find('option:selected')

    if $selected.val()
      @$span.text($selected.text())
      @$span.removeClass('is_blank') unless @options.noBlankClass
    else
      @$span.text($selected.text())
      @$span.addClass('is_blank') unless @options.noBlankClass

window.StyledSelect = StyledSelect

$.fn.extend styledSelect: (opts) ->
  $(@).find('select:not([data-no-styled-select])').each ->
    unless @styledSelect
      @styledSelect = true
      new StyledSelect($(@), opts)
