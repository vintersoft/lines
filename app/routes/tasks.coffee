`import Ember from 'ember'`

TasksRoute = Ember.Route.extend
  model: -> @store.find("task")

`export default TasksRoute`
