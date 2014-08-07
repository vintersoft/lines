`import Ember from 'ember'`

TaskController = Ember.ObjectController.extend
  
  actions:
    saveTitle: ->
      @get("model").save()

    saveDescription: ->
      @get("model").save()

`export default TaskController`