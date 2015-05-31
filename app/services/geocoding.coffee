`import Ember from 'ember'`

AddressGeocodingService = Ember.Service.extend
  urlBase: "https://maps.googleapis.com/maps/api/geocode/json?"

  base: (params) ->
    urlFull = @get('urlBase') + params
    Ember.$.getJSON(urlFull)

  find: (address) ->
    addressParams = 'address=' + address.split(' ').join('+')
    @base(addressParams)

  reverseFind: (lat, lng) ->
    coordsParams = 'latlng=' + lat.toString() + ',' + lng.toString()
    @base(coordsParams)


`export default AddressGeocodingService`
