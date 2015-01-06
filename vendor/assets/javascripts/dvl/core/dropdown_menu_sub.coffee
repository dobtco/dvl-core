$(document).on 'click', '.dropdown_menu_sub_trigger a', (e) ->
  $(e.target).parent().toggleClass('is_open')
  false
