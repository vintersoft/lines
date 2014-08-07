`import Ember from 'ember'`

EsCapeHelper = Ember.Handlebars.makeBoundHelper (value) ->
  value = Handlebars.Utils.escapeExpression(value)
  value = value.replace(/\n\r?/g, '<br>')
  new Handlebars.SafeString(value)

`export default EsCapeHelper`
