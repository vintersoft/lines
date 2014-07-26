`import Ember from 'ember'`

LinesRoute = Ember.Route.extend
  model: -> @store.find("line")

`export default LinesRoute`
