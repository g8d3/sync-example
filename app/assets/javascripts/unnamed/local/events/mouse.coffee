$ ->
  $('.do-new').click unnamed.local.tasks.new

  $('#resources').on 'mouseenter', 'tr.task', unnamed.local.tasks.mouseActive

  $('#resources').on 'click', 'tr.task', unnamed.local.tasks.edit

  $('#resources').on 'click', '.glyphicon-trash', unnamed.local.tasks.delete
