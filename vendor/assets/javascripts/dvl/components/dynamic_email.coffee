# Insert email address via js to reduce spam, I guess.
$ ->
  ourEmail = ['hello', '@', 'dobt', '.', 'co'].join('')
  $('.dynamic_email').attr('href', "mailto:#{ourEmail}").text(ourEmail)

