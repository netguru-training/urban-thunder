`import Ember from 'ember'`

PlaceShowController = Ember.Controller.extend
  geoLocation: Ember.inject.service()
  zoom: 17

  picker: Ember.computed 'lat', 'lng', ->
    {lat: @get('lat'), lng: @get('lng'), isDraggable: false}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('model.lat')
  lng: Ember.computed.alias('model.lng')
  centerLat: Ember.computed.alias('model.lat')
  centerLng: Ember.computed.alias('model.lng')

`export default PlaceShowController`
