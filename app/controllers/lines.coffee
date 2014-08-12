`import Ember from 'ember'`

LinesController = Ember.ArrayController.extend
  
  activeLine: ( ->
    active = @find( (line) -> line.isActive )
  ).property('@each.isActive')

  clearable: true

  actions:
    select: (line) ->
      if(@get("activeLine") != undefined)
        @get("activeLine").set("isActive", false)
      
      line.set("isActive", true)
      @set("clearable", false)

    clearSelection: ->
      if(@get("clearable") && @get("activeLine") != undefined)
        @get("activeLine").set("isActive", false)
      else
        @set("clearable", true)

    createTask: ->
      @store
        .createRecord('task', { title: "NewTask", line: @activeLine })
        .save().then ( (task) =>
          @activeLine.get("tasks").pushObject(task)
          @transitionToRoute('lines')
        ),( -> )

`export default LinesController`