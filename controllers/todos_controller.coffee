class Alfred.TodosController extends Batman.Controller
  emptyTodo: null
  
  index: ->
    @set 'emptyTodo', new Todo
  
    Todo.load (error, todos) ->
      throw error if error
      unless todos and todos.length
        callback = (error) -> throw error if error
        new Todo(body: 'joker', isDone: true).save()
    
  create: =>
    @emptyTodo.save (error, record) =>
      throw error if error
      
      @set 'emptyTodo', new Todo
      