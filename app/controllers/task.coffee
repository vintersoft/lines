`import Ember from 'ember'`

TaskController = Ember.ObjectController.extend
  
  actions:
    saveTitle: ->
      @get("model").save()

    saveDescription: ->
      @get("model").save()

    delete: ->
      task = @get('model')

      tasksP = task.get("line")
        .then (line) => line.get "tasks"

      task.destroyRecord()
        .then( => 
          tasksP.then (tasks) => tasks.removeObject(task)
          @transitionToRoute 'lines'
        )

`export default TaskController`
