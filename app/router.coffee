`import Ember from 'ember'`

Router = Ember.Router.extend(location: LinesENV.locationType)

Router.map ->
  @resource "lines", ->
    @resource "tasks", ->
      @resource "task", { path: ":task_id" }

`export default Router`
