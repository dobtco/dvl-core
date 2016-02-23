class DatetimePicker
  defaults: {}

  constructor: ($el, options) ->
    @options = $.extend({}, @defaults, options)
    @$el = $el
    @$wrapper = @$el.parent()
    @$clearBtn = @$wrapper.find('.datetime_input_clear')
    @initDate = if $el.val()
      new Date $el.val()
    else
      undefined
    @initTimeInput()
    @initDateInput()

    @$clearBtn.on 'click', $.proxy(@clear, @)

  initDateInput: ->
    @$dateInput = @$el.siblings('.input_group_date').find('input')
    @$dateInput.datepicker
      assumeNearbyYear: true
      autoclose: true
      todayHighlight: true
    @$dateInput.datepicker('update', @initDate) if @initDate
    @$dateInput.on 'changeDate clearDate', $.proxy(@update, @)
    @$el.siblings('.input_group_date').find('a').click =>
      @$dateInput.datepicker('show')

  initTimeInput: ->
    @$timeInput = @$el.siblings('.input_group_time').find('input')
    @$timeInput.timepicker()
    @$timeInput.timepicker('setTime', @initDate) if @initDate
    @$timeInput.on 'change', $.proxy(@update, @)
    @$el.siblings('.input_group_time').find('a').click =>
      @$timeInput.timepicker('show')

  clear: ->
    @$timeInput.timepicker('setTime', '')
    @$dateInput.datepicker('setDate', '')
    @$clearBtn.hide()
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
    val = @getDateString()
    @$el.trigger('update.dtpicker', val)
    @$el.val(val).trigger('input')

    if !val
      @$clearBtn.hide()
      @$el.trigger('cleared.dtpicker')
    else
      @$clearBtn.show()

$.fn.extend datetimePicker: (option, args...) ->
  @each ->
    data = $(@).data('dt-picker')

    if !data
      $(@).data 'dt-picker', (data = new DatetimePicker($(@), option))
    if typeof option == 'string'
      data[option].apply(data, args)
