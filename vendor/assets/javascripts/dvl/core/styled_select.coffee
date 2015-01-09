(($, window) ->

  class StyledSelect
    defaults:
      width: undefined # options are numeric (pixel units), 'full', or 'auto'

    constructor: ($el, options) ->
      @$el = $el
      @options = $.extend({}, @defaults, options)

      for i in ['width']
        @options[i] = @$el.data(i) if @$el.data(i)?

      @initWrapper()
      @$el.on 'change', $.proxy(@_change, @)
      @_change()

    initWrapper: ->
      @$wrapper = $('<div class="styled_select_wrapper" />')
      @$span = $('<div class="styled_select" />')
      @setWidth()
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
      @$span.text(@$el.val())

  $.fn.extend styledSelect: (option, args...) ->
    $(@).find('select:not(.datetime)').each ->
      data = $(@).data('styled-select')

      if !data
        $(@).data 'styled-select', (data = new StyledSelect($(@), option))
      if typeof option == 'string'
        data[option].apply(data, args)

) window.jQuery, window
