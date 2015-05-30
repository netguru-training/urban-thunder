`import Ember from 'ember'`

UsersSignOutRoute = Ember.Route.extend
  firebase: Ember.inject.service()

  activate: ->
    @get('firebase.ref').unauth()
    @transitionTo 'application'

`export default UsersSignOutRoute`
