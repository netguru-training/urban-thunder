`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'landing-page'

`export default IndexRoute`
