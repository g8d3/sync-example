$ ->
  $('#edit-resource form').submit (event) ->
    event.preventDefault()
    unnamed.remote.tasks.edit(@)

  $('#new-resource form').submit (event) ->
    event.preventDefault()
    unnamed.remote.tasks.new(@)
