`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'task', 'Task', {
  # Specify the other units that are required for this test.
  needs: ["model:line"]
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok model
