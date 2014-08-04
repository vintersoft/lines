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

`export default LinesController`