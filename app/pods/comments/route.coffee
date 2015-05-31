`import Ember from 'ember'`

CommentsRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'comment',
      place: @modelFor('place/show')

  actions:
    save: (model) ->
      place = @modelFor('place/show')
      model.save().then =>
        place.save().then =>
          newRecord = @store.createRecord 'comment',
            place: place
          @controller.set('model', newRecord)


`export default CommentsRoute`
