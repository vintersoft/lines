`import Ember from 'ember'`

LineController = Ember.ObjectController.extend

  actions:
    saveName: ->
      @get("model").save()

    delete: ->
      if confirm("¿Está seguro?")
      
        line = @get('model')
        line.destroyRecord().then( 
          ( => @transitionToRoute 'lines' )
          ( -> line.rollback() )
        )

`export default LineController`
