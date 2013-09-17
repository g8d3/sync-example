$ ->
  $('#tasks').on 'ajax:success', 'a[href*=edit]', ->
    console.log 'asd'
    unnamed.url @href
