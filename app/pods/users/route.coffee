`import config from '../../config/environment'`
`import Ember from 'ember'`

UsersRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  firebase: Ember.inject.service('firebase')

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

`export default UsersRoute`
