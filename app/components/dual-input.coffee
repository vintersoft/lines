`import Ember from 'ember'`

#usage: {{dual-input content=title edit='saveTitle' useMarkDown=true textAreaRows=10}}

DualInputComponent = Ember.Component.extend
  
  readMode: true
  
  isEmptyContent: ( ->
    Ember.isEmpty(@content)
  ).property('content')

  originalContent: null

  actions:
    edit: ->
      openInstance = DualInputComponent.openInstance
      if openInstance && !openInstance.isDestroyed
        openInstance.set("readMode", true)
      DualInputComponent.openInstance = this
      @set("originalContent", @content)
      @set("readMode", false)

    submit: ->
      @set("readMode", true)
      @sendAction 'edit'

    cancel: ->
      @set("content", @originalContent)
      @set("readMode", true)

DualInputComponent.reopenClass
  
  openInstance: null

`export default DualInputComponent`
