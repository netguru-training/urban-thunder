`import Ember from 'ember'`
`import config from '../config/environment'`

FirebaseService = Ember.Service.extend
  ref: Ember.computed ->
    new Firebase(config.firebase)

`export default FirebaseService`
