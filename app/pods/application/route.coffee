`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  model: ->
    Ember.A([
      {title: "Home", lat: 14.766127, lng: 102.810987, body: "Here is B&H's home"},
      {title: "Shop", lat: 14.762963, lng: 102.812285, body: "Here is B&H's shop", isInfoWindowVisible: true},
      {title: "Hay's", lat: 14.762900, lng: 102.813018, body: "HereXXXX is Hay's shop"},
    ])

`export default ApplicationRoute`
