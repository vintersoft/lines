`import Ember from 'ember'`

ModalEmComponent = Ember.Component.extend
  actions:
    close: ->
      @sendAction 'close'

  animateOpenModal: (->
    @$("#modal").slideDown()
  ).on("didInsertElement"),

  animateCloseModal: (->
    clone = @$("#modal").clone()
    clone_bg = @$(".reveal-modal-bg").clone().appendTo("body")

    clone
      .appendTo "body"
      .slideUp
        complete: ->
          @remove()
          clone_bg.remove()
  ).on('willDestroyElement'),

`export default ModalEmComponent`
