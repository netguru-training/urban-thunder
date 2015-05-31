`import Ember from 'ember'`

UsersSignInRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  actions:
    signIn: (model) ->
      @get('session').authenticate('authenticator:firebase',
        'email': model.get('email')
        'password': model.get('password')
      ).then =>
        @transitionTo 'places'
      , (error) ->
        console.log 'authError'

  activate: ->
    @transitionTo 'landing-page' if @get('session.isAuthenticated')


`export default UsersSignInRoute`
