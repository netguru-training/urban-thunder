`import Ember from 'ember'`

UsersRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'user'

  actions:
    save: (model) ->
      model.save()

`export default UsersRoute`
