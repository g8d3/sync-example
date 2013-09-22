tasks = unnamed.remote.tasks ||= {}

tasks.edit = (form) ->
  id = $('#edit-resource #task_id').val()
  url = "/tasks/#{ id }"
  request = $.ajax type: 'PUT', url: url, data: $(form).serialize(), dataType: 'json'
  request.done ->
    $('form').map -> @reset()
    $(':submit').blur()

tasks.new = (form) ->
  url = "/tasks"
  request = $.ajax type: 'POST', url: url, data: $(form).serialize(), dataType: 'json'

  request.done ->
    $('form').map -> @reset()
    $(':submit').blur()

