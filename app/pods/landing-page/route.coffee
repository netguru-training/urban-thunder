`import Ember from 'ember'`

LandingPageRoute = Ember.Route.extend
  model: ->
    this.store.findAll('place')

`export default LandingPageRoute`
