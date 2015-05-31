`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

PlacesIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    @store.findAll('place')
  actions:
    delete: (place) ->
      place.destroyRecord();
      return
`export default PlacesIndexRoute`
