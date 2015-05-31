`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

PlacesIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    @store.findAll('place')

`export default PlacesIndexRoute`
