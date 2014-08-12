`import Ember from 'ember'`

DualInputComponent = Ember.Component.extend
  
  isShowingRead: true
  
  isEmptyContent: ( ->
    @content == ""
  ).property('content')

  actions:
    read: ->
      openInstance = DualInputComponent.openInstance
      if openInstance && !openInstance.isDestroyed
        openInstance.set("isShowingRead", true)
      DualInputComponent.openInstance = this
      @set("isShowingRead", false)

    submit: ->
      @set("isShowingRead", true)
      @sendAction 'edit'


DualInputComponent.reopenClass
  
  openInstance: null

`export default DualInputComponent`
