`import Ember from 'ember'`

PlacesNewController = Ember.Controller.extend
  geoLocation: Ember.inject.service()

  centerLat: 51.9189046
  centerLng: 19.1343786
  zoom: 6

  picker: Ember.computed ->
    {lat: 51.9189046, lng: 19.1343786, isDraggable: true}

  markers: Ember.computed "picker", ->
    Ember.A([@get("picker")])

  lat: Ember.computed.alias('picker.lat')
  lng: Ember.computed.alias('picker.lng')

  geoLocation: Ember.inject.service()
  isLooking: false

  addressGeocoding: Ember.inject.service()

  actions:
    findLocation: ->
      @set('isLooking', true)
      @get('geoLocation').current().then((data) =>
        @set('centerLat', data.latitude)
        @set('centerLng', data.longitude)
        @set('zoom', 17)
        @set('isLooking', false)
        @set('picker.lat', data.latitude)
        @set('picker.lng', data.longitude))

    findAddress: (address) ->
      @get('addressGeocoding').find(address).then((data) =>
        lat = data.results[0].geometry.location.lat
        lng = data.results[0].geometry.location.lng
        @set('centerLat', lat)
        @set('centerLng', lng)
        @set('zoom', 17)
        @set('picker.lat', lat)
        @set('picker.lng', lng))

`export default PlacesNewController`
