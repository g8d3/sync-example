(->

  (->
    @class = 'warning'

    @$tasks = -> $('tr.task')

    @new = =>
      $('#new-task').click().on 'ajax:success', ->
        $('#task_title').focus()

    @edit = =>
      @$active().find('a[href*=edit]').click().
        on 'ajax:success', ->
          $('#task_title').focus()

    @preview = => @$active().find('a[href*=edit]').click()

    @delete = =>
      old = @$active()
      @next()
      old.find('a[data-method=delete]').click()

    @$active = => @$tasks().filter(".#{@class}")

    @$inactive = => @$active().removeClass(@class)

    @next = => $(@$inactive().nextAll('.task')[0] or @$tasks().first()).
      addClass(@class)
    @prev = => $(@$inactive().prevAll('.task')[0] or @$tasks().last()).
      addClass(@class)

  ).call @tasks
).call unnamed
