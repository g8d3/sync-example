props =
  selector:  (id) -> if id then "tr.task[data-id=#{id}]" else 'tr.task'
  class:     'active'
  editPath:  (id) -> "tasks/#{id}/edit"

unnamed.local.tasks = (id) ->
  if id
    tasks().filter(props.selector(id))
  else
    $(props.selector())

unnamed.local.task = ->
  @tasks().filter(".#{props.class}").first()

unnamed.local.tasks.current = unnamed.local.task

unnamed.local.tasks.next = ->
  current = @current().removeClass(@class)
  (current.next(@selector()) || @())

unnamed.local.tasks.activeNext = ->
  @active() and @inactive(@current())

unnamed.local.tasks._active = (id) ->
  @tasks(id).addClass @class

unnamed.local.tasks.actived = ->
  @tasks().filter(@class)


$.extend unnamed.local.task, props
$.extend unnamed.local.tasks, props

