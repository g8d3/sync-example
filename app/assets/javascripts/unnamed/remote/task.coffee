task =
  tr:            (id) -> "tr[data-id=#{ id }]"
  selectedClass: 'active'
  editPath:      (id) -> "tasks/#{ id }/edit"

unnamed.remote.task = (attrs = {}) ->
  ( ->
    $.getScript(@editPath(id))
  ).call task

$.extend unnamed.task, task


