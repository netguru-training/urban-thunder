`import Ember from 'ember'`

PlaceEditController = Ember.Controller.extend
  geoLocation: Ember.inject.service()
  zoom: 17

  picker: Ember.computed 'lat', 'lng', ->
    {lat: @get('lat'), lng: @get('lng'), isDraggable: false}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('model.lat')
  lng: Ember.computed.alias('model.lng')
  centerLat: Ember.computed.alias('lat')
  centerLng: Ember.computed.alias('lng')

`export default PlaceEditController`
