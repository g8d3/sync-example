(->
  @bindGlobal 'esc', ->
    $('form').map -> @reset()
    $('input,textarea').blur()
).call Mousetrap

Mousetrap.bind
  'j': -> unnamed.local.tasks.next()
  'k': -> unnamed.local.tasks.prev()
  'd': -> unnamed.local.tasks.delete()
  'e': -> unnamed.local.tasks.edit()
  'enter': -> unnamed.local.tasks.edit()
  'n': -> unnamed.local.tasks.new()
