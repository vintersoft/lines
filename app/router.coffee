`import Ember from 'ember'`

Router = Ember.Router.extend(location: LinesENV.locationType)

Router.map ->
	@resource "tasks"

`export default Router`
