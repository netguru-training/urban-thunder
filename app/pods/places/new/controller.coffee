`import Ember from 'ember'`

PlacesNewController = Ember.Controller.extend
  geoLocation: Ember.inject.service()

  centerLat: null
  centerLng: null

  picker: Ember.computed ->
    {title: "Home", lat: 52.4077859, lng: 16.9247929, body: "Here is B&H's home", isDraggable: true}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('picker.lat')
  lng: Ember.computed.alias('picker.lng')

`export default PlacesNewController`
