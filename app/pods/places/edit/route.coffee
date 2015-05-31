`import Ember from 'ember'`

PlacesEditRoute = Ember.Route.extend
  actions:
    save: ->
      model = this.modelFor('places/edit')
      model.save().then =>
        @transitionTo('places/index')
      return

    cancel: ->
      @transitionTo('places/index')
      return

  deactivate: ->
    model = @modelFor('places/edit')
    model.rollback()

`export default PlacesEditRoute`
