(->
  tasks = unnamed.tasks

  @bindGlobal 'esc', -> $('input').blur()
  @bind 'n', -> tasks.new()
  @bind 'j', -> tasks.next()
  @bind 'k', -> tasks.prev()
  @bind 'e', -> tasks.edit()
  @bind 'enter', -> tasks.preview()
  @bind 'd', -> tasks.delete()
).call Mousetrap
