`import Ember from 'ember'`

UsersSignInRoute = Ember.Route.extend
  activate: ->
    @transitionTo 'landing-page' if @get('session.isAuthenticated')

`export default UsersSignInRoute`
