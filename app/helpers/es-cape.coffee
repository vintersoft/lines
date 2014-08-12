`import Ember from 'ember'`

EsCapeHelper = Ember.Handlebars.makeBoundHelper (value) ->
  value = Ember.Handlebars.Utils.escapeExpression(value)
  value = value.replace(/\n\r?/g, '<br>')
  new Ember.Handlebars.SafeString(value)

`export default EsCapeHelper`
