`import Ember from 'ember'`

LinesRoute = Ember.Route.extend
  model: -> @store.find("line")

  actions:
  	closeModal: ->
  		@transitionTo('lines')

`export default LinesRoute`
