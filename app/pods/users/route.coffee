`import config from '../../config/environment'`
`import Ember from 'ember'`

UsersRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  firebase: Ember.inject.service()

  actions:
    save: (model) ->
      @get('firebase.ref').createUser
        email: model.get('email')
        password: model.get('password')
      , (error, userData) =>
        if error
          console.log error
        else
          @transitionTo 'users'

    sign_in: (model) ->
      @get('session').authenticate('authenticator:firebase',
        'email': model.get('email')
        'password': model.get('password')
      ).then =>
        @transitionTo 'landing-page'
      return


`export default UsersRoute`
