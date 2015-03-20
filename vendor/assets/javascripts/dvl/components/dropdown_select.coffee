class DropdownSelectInput
  defaults:
    blank: '' # text to display when blank option selected

  constructor: ($el, options) ->
    @options = $.extend({}, @defaults, options)
    @$el = $el
    @$input = $el.find('input')
    @$toggle = $el.find('[data-toggle=dropdown]')
    @$el.on 'click', 'a[data-value]', $.proxy(@_onClick, @)
    @_setText()

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

    if newText
      @$toggle.text(newText)
      @$toggle.removeClass('is_blank')
    else
      @$toggle.text(@options.blank)
      @$toggle.addClass('is_blank')

$.fn.extend dropdownSelect: (option, args...) ->
  $(@).find('[data-dropdown-select]').each ->
    data = $(@).data('dropdown-select-input')

    if !data
      $(@).data 'dropdown-select-input', (data = new DropdownSelectInput($(@), option))
    if typeof option == 'string'
      data[option].apply(data, args)
