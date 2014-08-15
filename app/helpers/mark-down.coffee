`import Ember from 'ember'`

MarkDownHelper = Ember.Handlebars.makeBoundHelper (value) ->
  showdown = new Showdown.converter()
  if Ember.isEmpty(value)
    value
  else
    new Ember.Handlebars.SafeString(showdown.makeHtml(value))

`export default MarkDownHelper`
