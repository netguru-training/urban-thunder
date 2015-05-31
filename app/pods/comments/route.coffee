`import Ember from 'ember'`

CommentsRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'comment',
      place: @modelFor('place/show')

  actions:
    save: (model) ->
      model.save().then =>
        console.log 'foo'
      , =>
        console.log 'bar'

`export default CommentsRoute`
