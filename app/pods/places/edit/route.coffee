`import Ember from 'ember'`

PlacesEditRoute = Ember.Route.extend
  actions:
    save: ->
      model = this.modelFor('places/edit')
      model.save().then =>
        @transitionTo('places')
      return

    cancel: ->
      @transitionTo('places')
      return

  deactivate: ->
    model = @modelFor('places/edit')
    model.rollback()

`export default PlacesEditRoute`
