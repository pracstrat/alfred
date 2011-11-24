class Alfred.Todo extends Batman.Model
  @global yes
  @persist Batman.LocalStorage
  @encode 'body', 'isDone'
  
  body: ''
  idDone: false
  editing: false

  on_edit: (node, event) ->
    @set 'editing', true

  on_blur: (node, event) ->
    @set 'editing', false
    @save