`import Ember from 'ember'`

UsersSignOutRoute = Ember.Route.extend
  firebase: Ember.inject.service()

  activate: ->
    @get('session').invalidate().then =>
      @transitionTo 'landing-page'
    return

`export default UsersSignOutRoute`
