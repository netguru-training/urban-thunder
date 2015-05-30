`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  @resource 'places', ->
  @resource 'users', ->

`export default Router`
