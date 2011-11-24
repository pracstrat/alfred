class Alfred.Todo extends Batman.Model
  @global yes
  @persist Batman.LocalStorage
  @encode 'body', 'isDone'
  
  body: ''
  idDone: false