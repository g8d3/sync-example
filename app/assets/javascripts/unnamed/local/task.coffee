tasks = unnamed.local.tasks ||= {}

tasks.next = ->
  _current = $('.task').index($('.warning'))
  current = ( _current + 1) % $('tr.task').size()
  $('tr.task.warning').removeClass 'warning'
  $('tr.task').eq(current).addClass 'warning'

tasks.prev = ->
  _current = $('.task').index($('.warning'))
  if (current = _current - 1) == -1 then current = $('tr.task').size() - 1
  $('tr.task.warning').removeClass 'warning'
  $('tr.task').eq(current).addClass 'warning'

tasks.delete = ->
  id = $('tr.task.warning').data('id')
  if id?
    url = "/tasks/#{ id }"
    $.ajax type: 'delete', url: url, dataType: 'json'

tasks.edit = ->
  id = $('tr.task.warning').data('id')
  url = "/tasks/#{ id }/edit"
  request = $.ajax url: url, dataType: 'json'

  request.done (resource) ->
    tasks.fillForm(resource)
    $('#new-resource').hide()
    input = 'input:visible:not(:submit), textarea:visible'
    $('#edit-resource').show().find(input).focus()

tasks.fillForm = (resource) ->
  for own k, v of resource
    $("#edit-resource #task_#{k}").val v

tasks.new = ->
  $('#edit-resource').hide()
  $('#new-resource').show()

tasks.focus = ->
  input = 'input:visible:not(:submit), textarea:visible'
  $('#new-resource').show().find(input).focus()

tasks.mouseActive = (event) ->
  $('tr.task.warning').removeClass 'warning'
  $(@).addClass 'warning'
