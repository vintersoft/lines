`import Ember from 'ember'`

MarkDownHelper = Ember.Handlebars.makeBoundHelper (value) ->
  showdown = new Showdown.converter()
  new Ember.Handlebars.SafeString(showdown.makeHtml(value))

`export default MarkDownHelper`
