`import Ember from 'ember'`

TaskController = Ember.ObjectController.extend
  
  actions:
    saveTitle: ->
      model = @get("model")

      if(Ember.isEmpty(model.get("title")))
        model.rollback()
      else
        model.save()

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
