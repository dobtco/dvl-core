# Subscribe to CityBase CityBlog notifications
$(document).on 'submit', '.newsletter_form', (e) ->
  e.preventDefault()
  $input = $(@).find('input[type=email]')
  return unless $input.val()

  $.ajax
    url: 'https://api.hsforms.com/submissions/v3/integration/submit/3064896/168dece9-f564-4e5c-85a0-bf721304d642'
    type: 'post'
    contentType: 'application/json'
    datatype: 'json'
    data:
      JSON.stringify(
        {
          "fields": [
            {
              "name": "email",
              "value": $input.val()
            },
            {
              "name": "subscriptions",
              "value": "CityBlog"
            }
          ],
          "context": {
            "pageUri": document.URL,
            "pageName": document.title
          }
        }
      )
    success: ->
      $input.flashPlaceholder('Thanks!', 2000)
    error: ->
      $input.flashPlaceholder('Whoops, an error occurred!', 2000)

  $input.flashPlaceholder('Subscribing...')
  $input.blur()

