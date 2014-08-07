`import Ember from 'ember'`

LinesController = Ember.ArrayController.extend
  
  activeLine: null
  clearable: true

  selectedLine: ( ->
    @get("activeLine")
  ).property('activeLine')

  actions:
    select: (line) ->
      @set("activeLine", line)
      @set("clearable", false)

    clearSelection: ->
      if @get("clearable")
        @set("activeLine", null)
      else
        @set("clearable", true)

    createTask: ->
      @store
        .createRecord('task', { title: "NewTask", line: @activeLine })
        .save().then ( (task) =>
          @activeLine.get("tasks").pushObject(task)
          @transitionTo('lines')
        ),( -> )

`export default LinesController`