`import Ember from 'ember'`

GeoLocationService = Ember.Service.extend
  current: ->
    new Promise (resolve, reject) ->
      if navigator.geolocation
        navigator.geolocation.getCurrentPosition (position) ->
          resolve(position.coords)
      else
        reject()


`export default GeoLocationService`
