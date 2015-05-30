`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  @resource 'user', path: 'users/:user_id', ->
  @resource 'places', ->

`export default Router`
