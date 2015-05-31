`import Ember from 'ember'`

UsersSignInRoute = Ember.Route.extend
  firebase: Ember.inject.service()

  model: ->
    @store.createRecord 'user'

  actions:
    signIn: (model) ->
      @get('session').authenticate('authenticator:firebase',
        'email': model.get('email')
        'password': model.get('password')
      ).then ->
        console.log 'authSuccess'
      , (error) ->
        console.log 'authError'


`export default UsersSignInRoute`
