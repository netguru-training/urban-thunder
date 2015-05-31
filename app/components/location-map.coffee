`import Ember from 'ember'`

LocationMapComponent = Ember.Component.extend
  zoom: 6
  defaultCenterLat: 51.9189046
  defaultCenterLng: 19.1343786

  _centerLat: Ember.computed.or('centerLat', 'defaultCenterLat')
  _centerLng: Ember.computed.or('centerLng', 'defaultCenterLng')

`export default LocationMapComponent`
