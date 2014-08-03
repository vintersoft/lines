`import Ember from 'ember'`

LineEditController = Ember.ObjectController.extend
  needs: ['lines']
  
  actions:
    
    save: ->
      line = @get('model')
      if !line.valid()
        alert("Ingrese un nombre")
      else
        line.save().then ( =>
          @transitionToRoute 'lines'
        ), ( ->
          alert("line save failed!")
        )

    closeModal: ->
      @get('model').rollback()
      @get('controllers.lines').send('closeModal')

    delete: ->
      line = @get('model')
      line.destroyRecord().then =>
        @transitionToRoute 'lines'

`export default LineEditController`