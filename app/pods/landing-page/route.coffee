`import Ember from 'ember'`

LandingPageRoute = Ember.Route.extend
  model: ->
    @store.findAll('place')

`export default LandingPageRoute`
