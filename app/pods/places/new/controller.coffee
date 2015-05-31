`import Ember from 'ember'`

PlacesNewController = Ember.Controller.extend
  geoLocation: Ember.inject.service()

  centerLat: 51.9189046
  centerLng: 19.1343786
  zoom: 6

  picker: Ember.computed ->
    {lat: 52.4077859, lng: 16.9247929, isDraggable: true}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('picker.lat')
  lng: Ember.computed.alias('picker.lng')

  geoLocation: Ember.inject.service()
  isLooking: false

  actions:
    findLocation: ->
      @set('isLooking', true)
      @get('geoLocation').current().then((data) =>
        @set('centerLat', data.latitude)
        @set('centerLng', data.longitude)
        @set('zoom', 17)
        @set('isLooking', false))

`export default PlacesNewController`
