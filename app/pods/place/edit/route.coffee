`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

PlacesEditRoute = Ember.Route.extend AuthenticatedRouteMixin,
  actions:
    save: ->
      model = this.modelFor('place/edit')
      model.save().then =>
        @transitionTo('place')
      return

    cancel: ->
      @transitionTo('place')
      return

  deactivate: ->
    model = @modelFor('place/edit')
    model.rollback()

`export default PlacesEditRoute`
