`import Ember from 'ember'`

LinesRoute = Ember.Route.extend
  model: -> @store.find("line")

  actions:
    closeModal: ->
      @transitionTo('lines')

    createLine: ->
      line = @store.createRecord('line', { name: "Nueva" }).save()
      @transitionTo('lines')

  renderTemplate: ->
    @render()

    @render("topbar", {
      outlet: "topbar"
      into: "application"
    })

`export default LinesRoute`
