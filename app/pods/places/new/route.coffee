`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

PlacesNewRoute = Ember.Route.extend AuthenticatedRouteMixin,
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

    # findLocation: ->

  centerLat: 52.4077859
  centerLng: 16.9247929


  deactivate: ->
    model = @modelFor('places/new')
    if model.get('isNew')
      model.destroyRecord()


`export default PlacesNewRoute`
