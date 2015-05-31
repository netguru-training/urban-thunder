`import Ember from 'ember'`

PlacesIndexRoute = Ember.Route.extend
  model: ->
    this.store.findAll('place')

`export default PlacesIndexRoute`
