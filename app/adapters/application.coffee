`import config from '../config/environment'`
`import Firebase from 'firebase'`
`import FirebaseAdapter from 'emberfire/adapters/firebase'`
`import DS from 'ember-data'`

if config.enableFirebase
  Adapter = FirebaseAdapter.extend(firebase: new Firebase(config.firebase))
else
  Adapter = DS.FixtureAdapter.extend()

`export default Adapter`
