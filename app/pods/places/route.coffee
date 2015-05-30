`import Ember from 'ember'`

PlacesRoute = Ember.Route.extend
  model: ->
    @store.findAll('place')

`export default PlacesRoute`
