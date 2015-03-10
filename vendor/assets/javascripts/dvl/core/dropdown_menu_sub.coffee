$(document).on 'click', '.dropdown_menu_sub_trigger a', (e) ->
  $(e.target).parent().toggleClass('is_open')
  false

$(document).on 'show.bs.dropdown', (e) ->
  # Find active sub items and open their parent dropdown
  $(e.target).
    find('.dropdown_menu_sub li.active').
    parent().
    closest('li').
    prev('.dropdown_menu_sub_trigger').
    addClass('is_open')
