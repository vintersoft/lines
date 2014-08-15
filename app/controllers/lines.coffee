`import Ember from 'ember'`

LinesController = Ember.ArrayController.extend
  
  activeLine: ( ->
    active = @find( (line) -> line.isActive )
  ).property('@each.isActive')

  actions:
    select: (line) ->
      if(@get("activeLine") != undefined)
        @get("activeLine").set("isActive", false)
      
      line.set("isActive", true)

    clearSelection: ->
      if(@get("activeLine") != undefined)
        @get("activeLine").set("isActive", false)

    createTask: ->
      @store
        .createRecord('task', { title: "NewTask", line: @get("activeLine") })
        .save().then ( (task) =>
          @get("activeLine").get("tasks").pushObject(task)
          @transitionToRoute('lines')
        ),( -> )

`export default LinesController`