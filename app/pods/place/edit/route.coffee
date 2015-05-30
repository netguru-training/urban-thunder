`import Ember from 'ember'`

PlacesEditRoute = Ember.Route.extend
  actions:
    save: ->
      model = this.modelFor('place/edit')
      model.save().then =>
        @transitionTo('places')
      return

    cancel: ->
      @transitionTo('places')
      return

  deactivate: ->
    model = @modelFor('place/edit')
    model.rollback()

`export default PlacesEditRoute`
