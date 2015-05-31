`import Ember from 'ember'`

AddressGeocodingService = Ember.Service.extend
  urlBase: "https://maps.googleapis.com/maps/api/geocode/json?"

  find: (address) ->
    addressParams = 'address=' + address.split(' ').join('+')
    urlFull = @get('urlBase') + addressParams
    Ember.$.getJSON(urlFull)

  reverseFind: (lat, lng) ->
    coordsParams = 'latlng=' + lat.toString() + ',' + lng.toString()
    urlFull = @get('urlBase') + coordsParams
    Ember.$.getJSON(urlFull)

`export default AddressGeocodingService`

