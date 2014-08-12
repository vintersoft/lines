`import Ember from 'ember'`

Router = Ember.Router.extend(location: LinesENV.locationType)

Router.map ->
  @resource "lines", ->

    @resource "line", { path: ":line_id" }, ->
      
      @resource "tasks", ->
        @resource "task", { path: ":task_id" }

`export default Router`
