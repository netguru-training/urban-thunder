`import Ember from 'ember'`

PlacesNewRoute = Ember.Route.extend
  model: ->
    return @store.createRecord 'place'

  actions:
    save: (lat,lng) ->
      model = this.modelFor('places/new')
      model.setProperties({lat, lng})
      model.save().then =>
        @transitionTo('places')
      return

    cancel: ->
      @transitionTo('places')
      return

  deactivate: ->
    model = @modelFor('places/new')
    if model.get('isNew')
      model.destroyRecord()


`export default PlacesNewRoute`
