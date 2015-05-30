`import Ember from 'ember'`

UsersRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  actions:
    save: (model) ->
      if model.get('isValid')
        model.save()
        @transitionTo 'users'

`export default UsersRoute`
