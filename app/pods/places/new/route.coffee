`import Ember from 'ember'`

PlacesNewRoute = Ember.Route.extend
  model: ->
    return @store.createRecord 'place',
      place: @modelFor 'places/new'

  actions:
    save: ->
      model = this.modelFor('places/new')
      model.save().then =>
        @transitionTo('places')
      return

    cancel: ->
      this.transitionTo('places')
      return

  deactivate: ->
    model = @modelFor('places/new')
    if model.get('isNew')
      model.destroyRecord()


`export default PlacesNewRoute`
