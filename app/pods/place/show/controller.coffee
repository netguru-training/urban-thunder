`import Ember from 'ember'`

PlaceShowController = Ember.Controller.extend
  geoLocation: Ember.inject.service()
  zoom: 17

  picker: Ember.computed 'centerLat', 'centerLng', ->
    {lat: @get('centerLat'), lng: @get('centerLng'), isDraggable: false}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('model.lat')
  lng: Ember.computed.alias('model.lng')
  centerLat: Ember.computed.alias('model.lat')
  centerLng: Ember.computed.alias('model.lng')

  filteredComments: Ember.computed.filterBy 'model.comments', 'isNew', false

`export default PlaceShowController`
