`import Ember from 'ember'`

TaskController = Ember.ObjectController.extend
  
  actions:
    saveTitle: ->
      @get("model").save().then( ( ->
        ),( ->
          console.log("fail saving title")
          @get("model").rollback()
        )
      )

    saveDescription: ->
      @get("model").save()

    delete: ->
      #TODO: If the server fails
      task = @get('model')
      line = task.get("line").content
      line_tasks = line.get("tasks").content

      task.destroyRecord().then( 
        ( => 
          line_tasks.removeObject(task)
          @transitionToRoute 'lines'
        ), ( ->
          #TODO: Hay un bug que no reestablece la relación con line
          task.rollback()
        )
      )

`export default TaskController`
