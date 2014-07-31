`import Ember from 'ember'`

LineEditController = Ember.ObjectController.extend

  actions:
    
    save: ->
      line = @get('model')
      line.save().then =>
        @transitionToRoute 'lines'

    delete: ->
      line = @get('model')
      line.destroyRecord().then =>
        @transitionToRoute 'lines'

`export default LineEditController`