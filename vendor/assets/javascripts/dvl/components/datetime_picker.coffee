class DatetimePicker
  defaults: {}

  constructor: ($el, options) ->
    @options = $.extend({}, @defaults, options)
    @$el = $el
    @$wrapper = @$el.parent()
    @initDate = if $el.val()
      new Date $el.val()
    else
      undefined
    @initTimeInput()
    @initDateInput()

    @$wrapper.on 'click', '.datetime_input_clear', $.proxy(@clear, @)

  initDateInput: ->
    @$dateInput = @$el.siblings('.input_group_date').find('input')
    @$dateInput.datepicker
      autoclose: true
      todayHighlight: true
    @$dateInput.datepicker('update', @initDate) if @initDate
    @$dateInput.on 'changeDate clearDate', $.proxy(@update, @)
    @$dateInput.parent().find('a').click =>
      @$dateInput.datepicker('show')

  initTimeInput: ->
    @$timeInput = @$el.siblings('.input_group_time').find('input')
    @$timeInput.timepicker()
    @$timeInput.timepicker('setTime', @initDate) if @initDate
    @$timeInput.on 'change', $.proxy(@update, @)
    @$timeInput.parent().find('a').click =>
      @$timeInput.timepicker('show')

  clear: ->
    @$timeInput.timepicker('setTime', '')
    @$dateInput.datepicker('setDate', '')
    @$el.trigger('cleared.dtpicker')

  getDateString: ->
    selectedDateObj = @$dateInput.datepicker('getDate')

    if !selectedDateObj || (selectedDateObj.toString() == 'Invalid Date')
      return ''

    fullDateObj = @$timeInput.timepicker('getTime', selectedDateObj)

    # Set default time if time == blank
    if !fullDateObj && selectedDateObj
      fullDateObj = selectedDateObj

    return '' unless fullDateObj

    fullDateObj.toString()

  update: ->
    @$el.val(@getDateString()).trigger('input')

$.fn.extend datetimePicker: (option, args...) ->
  @each ->
    data = $(@).data('dt-picker')

    if !data
      $(@).data 'dt-picker', (data = new DatetimePicker($(@), option))
    if typeof option == 'string'
      data[option].apply(data, args)
