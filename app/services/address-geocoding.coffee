`import Ember from 'ember'`

AddressGeocodingService = Ember.Service.extend
  find: (address) ->
    urlBase = 'https://maps.googleapis.com/maps/api/geocode/json?address='
    addressParam = address.split(' ').join('+')
    urlFull = urlBase + addressParam
    Ember.$.getJSON(urlFull)

`export default AddressGeocodingService`

