`import Ember from 'ember'`

DualInputComponent = Ember.Component.extend
  
  isShowingRead: true

  actions:
    read: ->
      @set("isShowingRead", false)    

    submit: ->
      @set("isShowingRead", true)
      @sendAction 'edit'

`export default DualInputComponent`
